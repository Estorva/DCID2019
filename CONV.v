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

    //----------------------------- PARAMETERS -------------------------------//

    // STATES
    parameter IDLE = 3'b000;
    parameter CONV = 3'b001;
    parameter MXPL = 3'b010;
    parameter FLAT = 3'b011;
    parameter DONE = 3'b100;

    //----------------------------- SUBMODULES -------------------------------//

    CONV_SUB conv0 (.clk(clk),
                    .reset(reset),
                    .data(idata),
                    .addr(iaddr),
                    .resultK0(convResult0),
                    .resultK1(convResult1),
                    .done(convDone0),
                    .en(convEnable));
    MXPL_SUB mxpl0 (.clk(clk),
                    .data(convResult0),
                    .result(mxplResult0),
                    .en(mxplEnable));
    MXPL_SUB mxpl1 (.clk(clk),
                    .data(convResult0),
                    .result(mxplResult0),
                    .en(mxplEnable));


    //----------------------------- VARIABLES --------------------------------//

    wire [DATAW-1 : 0] convResult0;
    wire [DATAW-1 : 0] convResult1;
    wire               convEnable;
    wire [DATAW-1 : 0] mxplResult0;
    wire [DATAW-1 : 0] mxplResult1;
    wire               mxplEnable;

    //----------------------------- ASSIGNMENT -------------------------------//

    assign busy = (state == CONV) | (state == MXPL) | (state == FLAT);
    assign convEnable = (state == CONV);
    assign mxplEnable = (state == MXPL);

    //----------------------------- COMBINATIONAL ----------------------------//

    always @(*) begin
        case (state)
            CONV: begin
                // fetch pixel from image
                if (address is valid)
                    cDataNext0 = iData;
                else
                    cDataNext0 = 0;

                case (count + offset)
                    n:
                        k0 = k00
                        ...

                cResultNext = multResult;

                cDataNext1 = cData1 + cResult;
                // cData1 serves as the result of addition where
                // cResult is the product of kernel element and pixel


                countNext = (count == 8 ? 0 : count + 1);
            end
            MXPL: begin
                // fetch pixel from testfixture memory
                cDataNext0 = cdata_rd;
                cDataNext1 = cData0;
                cResultNext = compResult;
                countNext = (count == 7 ? 0 : count + 1);
            end
            FLAT: begin
            end
        endcase
    end

    always @(*) begin
        // handle kernel k0 and k1 here

        case (count)
            0: begin
                k0 = k00;
                k1 = k01;
            ...
        endcase
    end

    //---------------------------- NEXT-STATE LOGIC ---------------------------//

    always @(*) begin
        // if 9 additions are done -> MXPL
        // but additions are not aligned with reading -> offset
    end

    //----------------------------- SEQUENTIAL -------------------------------//

    always @(posedge clk) begin
        if (!reset) begin
            // CLK EDGE
            iData <= idata;
            cData0 <= cDataNext0;
            cData1 <= cDataNext1;
            cResult <= cResultNext;
            state <= stateNext;
            count <= countNext;
        end
        else begin
            // RESET
        end

endmodule
