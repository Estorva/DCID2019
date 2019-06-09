`ifndef DATAW
`define DATAW 20
// width of data
`define ADDRW 12
// width of address
`endif

module MXPL_SUB(clk, data, convDone, result, mxplDone);

    //----------------------------- I/O PORTS --------------------------------//

    input                 clk;
    input                 convDone;
    input  [`DATAW-1 : 0] data;
    output                mxplDone;
    output [`DATAW-1 : 0] result;

    //----------------------------- VARIABLES --------------------------------//

    reg  signed [`DATAW-1 : 0] A; // the operand that is always the output of convolution
    reg  signed [`DATAW-1 : 0] B;
    reg         [1:0]         count;
    reg         [1:0]         countNext;

    wire signed [`DATAW-1 : 0] operandBNext;
    wire signed [`DATAW-1 : 0] compResult;


    //----------------------------- ASSIGNMENT -------------------------------//

    assign mxplDone = (countNext == 2'b00) & (count == 2'b11);
    assign operandBNext = (count == 2'b00 ? data : compResult);
    assign compResult = (A > B ? A : B); // declare A and B to be signed for this operation

    //----------------------------- COMBINATIONAL ----------------------------//

    always @(*) begin
        if (convDone) countNext = count + 1;
    end

    //----------------------------- SEQUENTIAL -------------------------------//

    always @(posedge clk) begin
        count <= countNext;
    end

endmodule
