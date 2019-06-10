`ifndef DATAW
`define DATAW 20
// width of data
`define ADDRW 12
// width of address
`endif

module MXPL_SUB(clk, reset, data, convDone, result, mxplDone);

    //----------------------------- I/O PORTS --------------------------------//

    input                 clk;
    input                 convDone;
    input                 reset;
    input  [`DATAW-1 : 0] data;
    output                mxplDone;
    output [`DATAW-1 : 0] result;

    //----------------------------- VARIABLES --------------------------------//

    reg  signed [`DATAW-1 : 0] A; // the operand that is always the output of convolution
    reg  signed [`DATAW-1 : 0] B;
    reg                        done_;
    reg                        done__;
    // delay the done signal two cycles
    reg         [1:0]         count;
    reg         [1:0]         countNext;


    wire signed [`DATAW-1 : 0] BNext;
    wire signed [`DATAW-1 : 0] compResult;


    //----------------------------- ASSIGNMENT -------------------------------//

    assign result = compResult;
    assign mxplDone = done__;
    assign BNext = (count == 2'b00 ? data : compResult);
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
            A <= data;
            B <= BNext;
            done__ <= done_;
            done_ <= (countNext == 2'b00) & (count == 2'b11);
        end
        else begin
            count <= 0;
            A <= 0;
            B <= 0;
            done_ <= 0;
            done__ <= 0;
        end
    end

endmodule
