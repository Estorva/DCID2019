`ifndef DATAW
`define DATAW 20
// width of data
`define ADDRW 12
// width of address
`endif

module MXPL_SUB(clk, reset, data, convDone, result, mxplDone);
    /*-------------------------------- SPEC ----------------------------------//
        Synopsis
            This module stores the results of convolution and compares the
            results. Output mxplDone is high for one cycle after 4 resulst are
            gathered (with some delay).

        Reg "A"
            Stores the results of convolution as a basis of comparison.

        Reg "B"
            Stores the results of comparison. When "count" is 00, B stores the
            same value as A. Later it stores the output of comparison (>).

        Reg "count"
            11 after reset and start waiting for convDone high signals. Outputs
            mxplDone when reaching 11 and gathering 4 data points.

    //-------------------------------- SPEC ----------------------------------*/

    //----------------------------- I/O PORTS --------------------------------//

    input                 clk;
    input                 convDone;
    input                 reset;
    input  [`DATAW-1 : 0] data;
    output                mxplDone;
    output [`DATAW-1 : 0] result;

    //----------------------------- VARIABLES --------------------------------//

    reg  signed [`DATAW-1 : 0] A;
    reg  signed [`DATAW-1 : 0] B;
    reg                        done_;
    reg                        done__;
    // delay the done signal two cycles
    reg         [1:0]          count;
    reg         [1:0]          countNext;


    wire signed [`DATAW-1 : 0] ANext;
    wire signed [`DATAW-1 : 0] BNext;
    wire signed [`DATAW-1 : 0] compResult;


    //----------------------------- ASSIGNMENT -------------------------------//

    assign result = B;
    assign mxplDone = done__;
    assign ANext = (convDone ? data : A);
    assign BNext = ((count == 2'b11 & convDone) ? data : compResult);
    assign compResult = (A > B ? A : B); // declare A and B to be signed for this operation

    //----------------------------- COMBINATIONAL ----------------------------//

    always @(*) begin
        if (convDone) countNext = count + 1;
        else          countNext = count;
    end

    //----------------------------- SEQUENTIAL -------------------------------//

    always @(posedge clk) begin
        if (!reset) begin
            count <= countNext;
            A <= ANext;
            B <= BNext;
            done__ <= done_;
            done_ <= (countNext == 2'b11) & (count == 2'b10);
        end
        else begin
            count <= 2'b11;
            A <= 0;
            B <= 0;
            done_ <= 0;
            done__ <= 0;
        end
    end

endmodule
