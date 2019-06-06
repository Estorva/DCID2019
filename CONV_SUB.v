`ifndef DATAW
`define DATAW 20
// width of data
`define ADDRW 12
// width of address
`endif

module MULT(
    input A,
    input B,
    output Y
    );

    input  A;
    input  B;
    output Y;

    /*-------------------------------- SPEC ----------------------------------//
        INPUT:  A, B: multiplicand and multiplier
        OUTPUT: Y: product of A and B

        A, B, and Y are all (non-formal) float point numbers, w/ 4 MSB's
        representing a signed integer and the rest 16 bits number after
        the radix point.
    //------------------------------------------------------------------------*/

    // TODO

endmodule


module RELU(A, Y);
    input  [DATAW-1 : 0] A;
    output [DATAW-1 : 0] Y;

    assign Y = {DATAW{A[DATAW-1]}} & A;

endmodule



module CONV_SUB(
	input  clk,
    input  reset,
    input  data,
    input  en,
    output addrRd,
    output addrWr,
    output resultK0,
    output resultK1,
    output done
	);

    /*-------------------------------- SPEC ----------------------------------//
        INPUT:  clk
                reset
                data:     the number returned by testfixture
                en:       high when the top module is in state CONV

        OUTPUT: resultK0: result of convolution of K0 and image
                resultK1
                addrRd:   upperLeft with offset, send to testfixture
                addrWr:   address of convolution result
                done:     high when the output is ready, lasts for 1 cycle

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

            Note also that for the maxpooling unit to function properly, the
            coordinate of convolution result must vary in this manner:

                (0, 0) -> (0, 1) -> (1, 0) -> (1, 1) -> (2, 0) -> (2, 1) -> ...
                ... -> (63, 1) -> (0, 2) -> (0, 3) -> (1, 2) -> (1, 3) -> ...

    //------------------------------------------------------------------------*/

    //----------------------------- I/O PORTS --------------------------------//

	input                clk;
    input                reset;
    input  [DATAW-1 : 0] data;
    input                en;
    output [ADDRW-1 : 0] addrRd;
    output [ADDRW-1 : 0] addrWr;
    output [DATAW-1 : 0] resultK0;
    output [DATAW-1 : 0] resultK1;
    output               done;

    //----------------------------- PARAMETERS -------------------------------//

    // KERNEL ELEMENTS
    parameter k00 = 20'h0A89E;
    parameter k01 = 20'h092D5;
    parameter k02 = 20'h06D43;
    parameter k03 = 20'h01004;
    parameter k04 = 20'hF8F71;
    parameter k05 = 20'hF6E54;
    parameter k06 = 20'hFA6D7;
    parameter k07 = 20'hFC834;
    parameter k08 = 20'hFAC19;
    parameter k10 = 20'hFDB55;
    parameter k11 = 20'h02992;
    parameter k12 = 20'hFC994;
    parameter k13 = 20'h050FD;
    parameter k14 = 20'h02F20;
    parameter k15 = 20'h0202D;
    parameter k16 = 20'h03BD7;
    parameter k17 = 20'hFD369;
    parameter k18 = 20'h05E68;

    //----------------------------- SUBMODULES -------------------------------//

    MULT mult0(.A(cData),
               .B(k0),
               .Y(multResult0)
    );
    MULT mult1(.A(cData),
               .B(k1),
               .Y(multResult1)
    );
    RELU relu0(.A(sumResult0)
               .Y(reluResult0)
    );
    RELU relu1(.A(sumResult1)
               .Y(reluResult1)
    );

    //----------------------------- VARIABLES --------------------------------//

    reg  [DATAW-1 : 0] iData;
    reg  [DATAW-1 : 0] cDataNext;
    reg  [DATAW-1 : 0] cData;
    reg  [DATAW-1 : 0] k0;
    reg  [DATAW-1 : 0] k1;
    // the elements of 0th and 1st kernel as operands of multiplication
    reg  [DATAW-1 : 0] addend0;
    reg  [DATAW-1 : 0] addend1;
    // operand of addition, from multResult
    reg  [DATAW-1 : 0] sumResultNext0;
    reg  [DATAW-1 : 0] sumResultNext1;
    reg  [DATAW-1 : 0] sumResult0;
    reg  [DATAW-1 : 0] sumResult1;
    reg  [DATAW-1 : 0] convResultNext0;
    reg  [DATAW-1 : 0] convResultNext1;
    reg  [DATAW-1 : 0] convResult0;
    reg  [DATAW-1 : 0] convResult1;
    reg  [ADDRW-1 : 0] upperLeft;
    reg  [ADDRW-1 : 0] upperLeftNext;
    reg  [3:0]         offset;
    // the offset to be applied to upperLeft for points in a convolution window
    reg  [3:0]         offsetNext;
    reg                updateResult;
    // when high, assign convResultNext w/ reluResult
    // this signal can only maintain high for 1 cycle

    wire [DATAW-1 : 0] multResult0;
    wire [DATAW-1 : 0] multResult1;
    wire [DATAW-1 : 0] addResult0;
    wire [DATAW-1 : 0] addResult1;
    wire [DATAW-1 : 0] reluResult0;
    wire [DATAW-1 : 0] reluResult1;
    wire               resetSum;
    // when high, assign sumResultNext w/ 0

    //----------------------------- ASSIGNMENT -------------------------------//

    assign resultK0 = convResult0;
    assign resultK1 = convResult1;
    assign done = updateResult;

    assign addResult0 = addend0 + sumResult0;
    assign addResult1 = addend1 + sumResult1;

    //----------------------------- COMBINATIONAL ----------------------------//

    always @(*) begin
        // TODO
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
        // update count and upperLeft here
    end

    //----------------------------- SEQUENTIAL -------------------------------//

    always @(posedge clk) begin
        if (!reset) begin
            // CLK EDGE
            iData <= data;
            cData <= cDataNext;
            addend0 <= multResult0;
            addend1 <= multResult1;
            sumResult0 <= sumResultNext0;
            sumResult1 <= sumResultNext1;
            convResult0 <= convResultNext0;
            convResult1 <= convResultNext1;
            upperLeft <= upperLeftNext;
            offset <= offsetNext;
        end
        else begin
            // RESET
        end

endmodule
