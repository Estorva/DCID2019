`include "CONV_SUB.v"
`timescale 1ns/10ps

`ifndef DATAW
`define DATAW 20
// width of data
`define ADDRW 12
// width of address
`endif

module  CONV(
	input		clk,
	input		reset,
	output		busy,
	input		ready,
	output		iaddr,
	input		idata,
	output	 	cwr,
	output	 	caddr_wr,
	output	 	cdata_wr,
	output	 	crd,
	output	 	caddr_rd,
	input	 	cdata_rd,
	output	 	csel
	);

    /*-------------------------------- SPEC ----------------------------------//
        INPUT:  clk
                reset
                ready: testfixture sets ready to low when busy is high
                       (busy should be high when ready is high)
                       Can only read image from testfixture if ready is high
                idata: testfixture reads iaddr at negedge of clk and returns
                       corresponding data point
        OUTPUT: busy
                iaddr: address of a pixel on the 64x64 grayscale image
                cwr:   when high, testfixture writes cdata_wr to MEM[caddr_wr]
                       at posedge of clk
                crd:   when high, testfixture reads caddr_rd at posedge of clk
                       and returns MEM[caddr_rd] at next negedge
                csel:  select MEM
                       000: no memory selected
                       001: w/r result of layer 0 kernel 0
                       010: w/r result of layer 0 kernel 1
                       011: w/r result of layer 1 kernel 0
                       100: w/r result of layer 1 kernel 1
                       101: w/r result of layer 2
                       11x: unspecified

        Reading image:
            To minimize our circuit area and maximize usage of all resources/
            submodules of our circuit, a large array of registers that stores
            intermediate data is discarded and we restrict ourselves to a
            single register to store an intermediate result.
            We define a window wherein we will perform convolution. A counter
            will count from 0 to 8, iterating pixels in the window. We also
            need a register to store the address of the upper-left pixel of the
            window, and add the value of the counter to this register to iterate
            through the window. Thus our reading process will be

                assign iaddr = upperLeft + count
                ...
                // reset/initial
                result = 0
                upperLeft = (1, 1)
                ...
                idata <= testfixture
                result += mult(idata, kernel[count])
                count += 1
                ...
                // after 9 multiplications are done
                MEM[upperLeft + (1, 1)] = result
                result = 0

            For zero-padding, we check if x/y component of upperLeft is -1 or 62
            Since the address is log2(64*64) = 12 bits wide, we check either
            of upper 6 bits or lower 6 bits is -1 or 62. Thus

                if (upperLeft[11:6] == 6'b111111 && count == {0,1,2})
                    cData0 <= 0

            Note that since our address is unsigned, 6'b111111 corresponds to
            63 and testfixture will return whatever is on coordinate 63.

        Maxpooling:
            In this case our window is 2x2 and stride is 2. We use 2 registers
            to store operands of comparator. We fill the first reg w/ pixel
            we read from memory. Suppose we are to maxpoll A, B, C,
            and D pixels, w/ D > B > C > A, the state of data should be this:

                Reg 1  Reg 2  GreaterThan(Reg1, Reg2) Count
                A      X      X                       0
                B      A      B                       1
                C      B      B                       2
                D      B      D                       3

            When count = 0, we push content of reg 1 into reg 2 at clk posedge.
            Otherwise we fill reg 2 w/ result of comparator. We then save the
            output of comparator to MEM.
            UpperLeft is reused here, but initialized to (0, 0) and increases
            by (2, 0). Count is also used here, but counts to 3. It is increased
            not at clk posedge but at count reaching 3.
            For maxpooling the second image, we hold upperLeft and increase
            count from 4 to 7.

        Flattening:
            UpperLeft is reused here, but initialized to (0, 0) and increases by
            (1, 0). Count is also reused, but counts to 1, serving as the choice
            between MEM0 and MEM1. When count = 0, we save MEM0[upperLeft] to
            MEM[upperLeft * 2], and when count = 1, we save MEM1[upperLeft] to
            MEM[upperLeft * 2 + count].

    //------------------------------------------------------------------------*/

    //----------------------------- I/O PORTS --------------------------------//

    input         clk;
    input         reset;
    input         ready;
    input  [19:0] idata;
    input  [19:0] cdata_rd;
    output        busy;
    output [11:0] iaddr;
    output        crd;
    output [11:0] caddr_rd;
    output        cwr;
    output [19:0] cdata_wr;
    output [11:0] caddr_wr;
    output [2:0]  csel;

    //----------------------------- SUBMODULES -------------------------------//

    CONV_SUB conv0 (.clk(clk),
                    .reset(reset),
                    .data(idata),
                    .addrRd(iaddr),
                    .addrWr(convAddr),
                    .resultK0(convResult0),
                    .resultK1(convResult1),
                    .done(convDone),
    );
    MXPL_SUB mxpl0 (.clk(clk),
                    .data(convResult0),
                    .result(mxplResult0),
                    .done(mxplDone0)
    );
    MXPL_SUB mxpl1 (.clk(clk),
                    .data(convResult1),
                    .result(mxplResult1),
                    .done(mxplDone1),
    );


    //----------------------------- VARIABLES --------------------------------//

    reg  [2:0]         cSel;
    reg  [2:0]         cSelNext;
    reg  [DATAW-1 : 0] cDataWr;
    reg  [DATAW-1 : 0] cDataWrNext;
    reg  [ADDRW-1 : 0] cAddrWr;
    reg  [ADDRW-1 : 0] cAddrWrNext;
    reg                mxplSel;
    // 0 when write mxpl0 to mem; lasts for 2 cycles, one for layer 1, the other
    // for layer 2 (flattening)
    reg                mxplSelNext;

    wire [DATAW-1 : 0] convResult0;
    wire [DATAW-1 : 0] convResult1;
    wire [ADDRW-1 : 0] convAddr;
    wire               convDone;
    wire [DATAW-1 : 0] mxplResult0;
    wire [DATAW-1 : 0] mxplResult1;
    wire [ADDRW-1 : 0] mxplAddr;
    wire               mxplDone0;
    wire               mxplDone1;

    //----------------------------- ASSIGNMENT -------------------------------//

    assign busy = (state == CONV) | (state == MXPL) | (state == FLAT);
    assign csel = cSel;
    assign cwr = (cSel == 3'b000) | (cSel == 3'b001);
    assign cdata_wr = cDataWr;
    assign caddr_wr = cAddrWr;

    assign convEnable = (state == CONV);
    assign mxplEnable = (state == MXPL);
    assign mxplAddr = {convAddr[ADDRW-1 : ADDRW / 2 + 1], convAddr[ADDRW / 2 : 1]};
    // mxplAddr = (convAddr.x / 2, convAddr.y / 2)

    //----------------------------- COMBINATIONAL ----------------------------//

    always @(*) begin
        // When convDone is high, convResult0 and 1 will be updated
        // in the next cycle. If cSel is 010, make it 000 in the next cycle,
        // and keep it as such until the next convDone signal comes.
        // In the case of writing maxpooled result to memory, the cSel varies
        // as such: 0 -(mxplDone)-> 011 -> 101 -> 100 -> 101 -> 0
        // and mxplSel:        0 -> 0          -> 1          -> 0

        if (convDone)            cSelNext = 3'b001;
        else if (cSel == 3'b010) cSelNext = 3'b000;
        else if (cSel == 3'b000) cSelNext = cSel;
        else                     cSelNext = cSel + 3'b001;

        if (mxplDone0)   cSelNext = 3'b011;
        else begin
            case (cSel)
                3'b011:  cSelNext = 3'b101;
                3'b100:  cSelNext = 3'b101;
                3'b101:  cSelNext = (mxplSel ? 3'b000 : 3'b100);
                    // currently flatening, if mxplSel is 0, i.e.
                    // writing mxpl of kernel 0 to memory, then
                    // write mxpl of kernel 1 at next cycle
                    // If mxplSel is 1, reset to 0 and wait.
                default: cSelNext = 3'b000;
            endcase
        end

        if (mxplDone0)           mxplSelNext = 0;
        else if (cSel == 3'b101) mxplSelNext = ~mxplSel; // 0 -> 1, 1 -> 0
        else if (cSel != 3'b000) mxplSelNext = mxplSel;  // hold value
        else                     mxplSelNext = 0;
    end

    always @(*) begin
        // The timing relationship of writing convolution result to memory:
        // t+0 convDone is high
        // t+1 convDone is low, cSel = 000, convResult0/1 and convAddr is updated
        // t+2 cSel = 001, cWr = cwr = convResult0, caddr_wr
        // t+3 cSel = 010, cwr = convResult1

        case (cSelNext)
            // Determine data to write depending on cSelNext
            3'b001: cDataWrNext = convResult0;
            3'b010: cDataWrNext = convResult1;
            3'b011: cDataWrNext = mxplResult0;
            3'b100: cDataWrNext = mxplResult1;
            3'b101: cDataWrNext = (/*TODO*/ ? mxplResult0 : mxplResult1);
        endcase

        if (cSel == 3'b000 | cSel == 3'b001)
            cAddrWrNext = convAddr;
        else if (cSel == '3'b010 | cSel == 3'b011)
            cAddrWrNext = mxplAddr;
        else
            cAddrWrNext = 0;
    end

    //----------------------------- SEQUENTIAL -------------------------------//

    always @(posedge clk) begin
        if (!reset) begin
            // CLK EDGE
            cSel <= cSelNext;
            cDataWr <= cDataWrNext;
            cAddrWr <= cAddrWrNext;
            mxplSel <= mxplSelNext;
        end
        else begin
            // RESET
        end

endmodule
