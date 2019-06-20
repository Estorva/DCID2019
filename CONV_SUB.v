`ifndef DATAW
`define DATAW 20
// width of data
`define ADDRW 12
// width of address
`endif


module MULT(
    //Because we have to add 8 times by booth encoding method , we must cut pipeline
    input              clk,
	input              reset,
	input [`DATAW-1:0] A, //input cData
    input [`DATAW-1:0] B, //input k0
	input              enMULT, //If enMULT = 1 , we update count in MULT
    output             [35:0] Y,
	output             doneMULT //doneMULT = 1 can only maintain one cycle and must be in the previous cycle we leave.
    );

    /*-------------------------------- SPEC ----------------------------------//
        INPUT:  A, B: multiplicand and multiplier
        OUTPUT: Y: product of A and B

        A, B, and Y are all (non-formal) float point numbers, w/ 4 MSB's
        representing a signed integer and the rest 16 bits number after
        the radix point.
    //------------------------------------------------------------------------*/

	reg  [`DATAW-1:0]     PP; //20-bit Partial product
	reg  [2*(`DATAW-2):0] Ans; //37-bit Correct Answer
	reg  [2*(`DATAW-2):0] AnsNext;
	reg  [34:0]           AnsCorrect;
	reg  [35:0]           AnsCorrect_update;
	reg  [2:0]            inputs; // inputs : x_2i+1 x_2i x_2i-1 8 possibility
	reg  [3:0]            count; //from 0 to 8 , PP0 -> PP8
	reg  [3:0]            countNext;
	reg                   signCorrect ; //the sign of final result
	reg                   signCorrectNext;
	reg                   sign;// For PP

    wire [`DATAW-2:0]     Mc; //19-bit Multiplicand (textbook Y) (A)
    wire [`DATAW-2:0]     Mp; //19-bit Multiplier (textbook X) (B)
    wire                  signA;
	wire                  signB;

	assign signA = A[`DATAW-1];
	assign signB = B[`DATAW-1];
	assign Mc = ({`DATAW-1{signA}} & (~A[`DATAW-2:0]+18'd1)) | ({`DATAW-1{~signA}} & A[`DATAW-2:0]);
	assign Mp = ({`DATAW-1{signB}} & (~B[`DATAW-2:0]+18'd1)) | ({`DATAW-1{~signB}} & B[`DATAW-2:0]);
	assign Y = AnsCorrect_update;
	assign doneMULT = (count == 4'b0111); //if doneMULT = 1 , we update offset

	///combinational
	always @(*) begin //update signCoreect
		if (count == 4'b0001)
			signCorrectNext = signA^signB;
		else
			signCorrectNext = signCorrect;
	end
	always @(*) begin
		AnsCorrect = Ans[34:0];
		if( AnsCorrect == 35'd0 )
			AnsCorrect_update = 36'd0;
		else
			AnsCorrect_update = {signCorrect, ( ({35{signCorrect}} & (~AnsCorrect+35'd1)) | ({35{~signCorrect}} & AnsCorrect) )};
	end

	always @(*) begin
		if(count == 4'b0000 ) inputs = { Mp[1:0] , 1'b0};
		else if (count == 4'b1001) inputs = { 1'b0 , Mp[`DATAW-2:`DATAW-3] };
		else inputs = Mp[((count<<1)+1)-:3];
		//inputs determined by Multiplier Mp ( textbook X ) and count
		case (inputs)
			3'b000: PP = 0;
			3'b001: PP = Mc;
			3'b010: PP = Mc;
			3'b011: PP = Mc << 1;
			3'b100:	PP = ~(Mc << 1) + 1;
			3'b101: PP = ~Mc + 1;
			3'b110: PP = ~Mc + 1;
			3'b111:	PP = 0;
			default: PP = 0;
		endcase
		sign = PP[`DATAW-1];

		case (count)
			4'b0000: AnsNext = {~sign,{2{sign}},PP};
			4'b0001: AnsNext = Ans + ({1'b1,~sign,PP} << 2);
			4'b0010: AnsNext = Ans + ({1'b1,~sign,PP} << 4);
			4'b0011: AnsNext = Ans + ({1'b1,~sign,PP} << 6);
			4'b0100: AnsNext = Ans + ({1'b1,~sign,PP} << 8);
			4'b0101: AnsNext = Ans + ({1'b1,~sign,PP} << 10);
			4'b0110: AnsNext = Ans + ({1'b1,~sign,PP} << 12);
			4'b0111: AnsNext = Ans + ({1'b1,~sign,PP} << 14);
			4'b1000: AnsNext = Ans + ({~sign,PP} << 16);
			4'b1001: AnsNext = Ans + (PP[`DATAW-2:0]<< 18);
			default: AnsNext = Ans;
		endcase
	end
	always @(*) begin
		//Update count
		if( enMULT  ) begin
			countNext = count + 1;
		end
		else begin
			countNext = 4'b0000;
		end
	end

	///sequential
    always @(posedge clk) begin
        if (!reset) begin
			Ans <= AnsNext;
			count <= countNext;
			signCorrect <= signCorrectNext;
		end
		else begin
		//RESET
			Ans <= 0;
			count <= 0;
			signCorrect <= 0;
		end
	end
endmodule


module RELU(A, Bi, Y);//Combine bias and RELU
    input  [35 : 0] A;
	input  [`DATAW-1 : 0] Bi; //Bias
    output [`DATAW-1 : 0] Y;
	wire   [`DATAW-1 : 0] A_update;
	wire   [`DATAW-1 : 0] biasResult;
	assign A_update = A[35:16] + A[15]; //Before relu , we round the result w/ the 20-bit
	assign biasResult = A_update + Bi; //just add directly regardless of positive or negative
    assign Y = {`DATAW{~biasResult[`DATAW-1]}} & biasResult;
endmodule



module CONV_SUB(
    input                 clk,
    input                 reset,
    input  [`DATAW-1 : 0] data, //idata
    input                 en,
    output [`ADDRW-1 : 0] addrRd,
    output [`ADDRW-1 : 0] addrWr,
    output [`DATAW-1 : 0] resultK0,
    output [`DATAW-1 : 0] resultK1,
    output                done,
    output                term
	);
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
	//Bias
	parameter Bias0 = 20'h01310;
	parameter Bias1 = 20'hF7295;

    //----------------------------- VARIABLES --------------------------------//

    reg  [`DATAW-1 : 0] iData;
    reg  [`DATAW-1 : 0] cDataNext;
    reg  [`DATAW-1 : 0] cData;
    reg  [`DATAW-1 : 0] k0;
    reg  [`DATAW-1 : 0] k1;
    // the elements of 0th and 1st kernel as operands of multiplication
    reg  [35 : 0]       addend0;
    reg  [35 : 0]       addend1;
	reg  [35 : 0]       addendNext0;
	reg  [35 : 0]       addendNext1;
    // operand of addition, from multResult
    reg  [35 : 0]       sumResultNext0;
    reg  [35 : 0]       sumResultNext1;
    reg  [35 : 0]       sumResult0;
    reg  [35 : 0]       sumResult1;
    reg  [`DATAW-1 : 0] convResultNext0;
    reg  [`DATAW-1 : 0] convResultNext1;
    reg  [`DATAW-1 : 0] convResult0;
    reg  [`DATAW-1 : 0] convResult1;
    reg  [`ADDRW-1 : 0] upperLeft;
    reg  [`ADDRW-1 : 0] upperLeftNext;
	reg  [`ADDRW-1 : 0] upperLeft_org;//return to original upperLeft due to early updating.
    reg  [3:0]          offset;
    // the offset to be applied to upperLeft for points in a convolution window
    reg  [3:0]          offsetNext;
	reg  [`ADDRW/2-1:0] Q; //Quotient from 0 to 2
	reg  [`ADDRW/2-1:0] R; //Remainder from 0 to 2
	reg  [6:0]			countMULT;//Control resetSum/updateSum/updateResult/done/enMULT/upperLeft/addrWr
	reg	 [6:0]			countMULTNext;
	reg  				enMULT_reg; //For enMULT
    reg                 updateSum_reg;//For updateSum

	wire				updateSum;
	wire 				updateResult;
    wire [35 : 0]       multResult0;
    wire [35 : 0]       multResult1;
    wire [35 : 0]       addResult0;
	wire [35 : 0]       addResult1;
	wire [`DATAW-1 : 0] reluResult0;
    wire [`DATAW-1 : 0] reluResult1;
    wire                resetSum;
    // when high, assign sumResultNext w/ 0
	wire 				enMULT;
	wire 				doneMULT;

    //----------------------------- ASSIGNMENT -------------------------------//
	assign enMULT = enMULT_reg;
	assign resetSum = (countMULT == 7'd95);
	assign updateSum =  updateSum_reg;//If updateSum = 1 , we plus addend to sumResult.
	assign updateResult = (countMULT == 7'd94);//If updateResult = 1 , we update convResult w/ reluResult.
    assign resultK0 = convResult0;
    assign resultK1 = convResult1;
    assign done = (countMULT == 7'd95);//when convResult is ready , we pull up done.
    //done can only maintain high for 1 cycle
	assign addResult0 = addend0 + sumResult0;
    assign addResult1 = addend1 + sumResult1;
	assign addrWr = {(upperLeft_org[`ADDRW-1:`ADDRW/2] + 6'b000001),(upperLeft_org[`ADDRW/2-1:0] + 6'b000001)};
	assign addrRd = {upperLeft[`ADDRW-1:`ADDRW/2] + Q , upperLeft[`ADDRW/2-1:0] + R};
    assign term = done & (upperLeft == 12'hFFF);
    // when upperLeft done at (62, 62) and jumps to (-1, -1), the convolution process terminates

    //----------------------------- SUBMODULES -------------------------------//

    MULT mult0(.clk(clk),
			   .reset(reset),
			   .A(cData),
               .B(k0),
			   .enMULT(enMULT), //input reg output wire
               .Y(multResult0),
			   .doneMULT(doneMULT)
    );
    MULT mult1(.clk(clk),
			   .reset(reset),
			   .A(cData),
               .B(k1),
			   .enMULT(enMULT),
               .Y(multResult1),
			   .doneMULT(doneMULT)
    );
    RELU relu0(.A(sumResult0),
			   .Bi(Bias0),
               .Y(reluResult0)
    );
    RELU relu1(.A(sumResult1),
			   .Bi(Bias1),
               .Y(reluResult1)
    );

    //----------------------------- COMBINATIONAL ----------------------------//
	always @(*) begin
		//upperLeft_org for addrWr
		if(upperLeft[`ADDRW/2] & ~upperLeft[0]) //Y = odd , X = even
		begin
			upperLeft_org[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2];
			upperLeft_org[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] - 6'b000001;     // X_org = X-1
		end
		else if( ~upperLeft[`ADDRW/2] & upperLeft[0]) //Y = even, X = odd
		begin
			upperLeft_org[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2] - 6'b000001; //Y_org = Y-1
			upperLeft_org[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] + 6'b000001; //X_org = X + 1
		end
		else if( ~upperLeft[`ADDRW/2] & ~upperLeft[0]) //Y = even, X = even
		begin
			upperLeft_org[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2];
			upperLeft_org[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] - 6'b000001;     // X_org = X-1
		end
		else if (upperLeft[`ADDRW/2] & upperLeft[0] & (upperLeft[`ADDRW/2-1:0] == 6'b111111))
		begin//Y = odd, X = odd, and X == 63 , LET'S X_org = X -1 , Y_org = Y -1
			upperLeft_org[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2] - 6'b000001;
			upperLeft_org[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] - 6'b000001;
		end
		else // Y = odd, X = odd, and X != 63 , LET'S X_org = X -1 ,Y_org = Y + 1
		begin
			upperLeft_org[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2] + 6'b000001;
			upperLeft_org[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] - 6'b000001;
		end
	end

	always @(*) begin
		//updateSum_reg for updateSum
		if(countMULT == 7'd13 | countMULT == 7'd23 |countMULT == 7'd33 | countMULT == 7'd43
		 | countMULT == 7'd53 | countMULT == 7'd63 |countMULT == 7'd73 | countMULT == 7'd83 | countMULT == 7'd93)
			updateSum_reg = 1;
		else updateSum_reg = 0;
	end

	always @(*) begin
		//enMULT_reg for enMULT
		if(countMULT == 7'd0 | countMULT == 7'd1 |countMULT == 7'd11 | countMULT == 7'd21
		 | countMULT == 7'd31| countMULT == 7'd41|countMULT == 7'd51 | countMULT == 7'd61
		 | countMULT == 7'd71| countMULT == 7'd81|countMULT == 7'd91)
			enMULT_reg = 0;
		else enMULT_reg = 1;
	end
	always @(*) begin

		if(upperLeft[`ADDRW-1:`ADDRW/2] == 6'b111111 & (offset == 4'b0000 | offset == 4'b0001 | offset == 4'b0010)) cDataNext = 0;
		else if(upperLeft[`ADDRW/2-1:0] == 6'b111111 & (offset == 4'b0000 | offset == 4'b0011 | offset == 4'b0110)) cDataNext = 0;
		else if(upperLeft[`ADDRW/2-1:0] == 6'b111110 & (offset == 4'b0010 | offset == 4'b0101 | offset == 4'b1000)) cDataNext = 0;
		else if(upperLeft[`ADDRW-1:`ADDRW/2] == 6'b111110 & (offset == 4'b0110 | offset == 4'b0111 | offset == 4'b1000)) cDataNext = 0;
		else cDataNext = iData;

		//resetSum and updateSum will not happen at the same time
		if(resetSum)  begin
			sumResultNext0 = 0;
			sumResultNext1 = 0;
		end
		else if(updateSum) begin
			sumResultNext0 = addResult0;
			sumResultNext1 = addResult1;
		end
		else begin
			sumResultNext0 = sumResult0;
			sumResultNext1 = sumResult1;
		end

		if(updateResult) begin //updateResult
			convResultNext0 = reluResult0;
			convResultNext1 = reluResult1;
		end
		else begin
			convResultNext0 = convResult0;
			convResultNext1 = convResult1;
		end
    end

    always @(*) begin
		//deal with addrRd w/ Quotient Q and Remainder R
        case (offset)
            4'b0000: begin
				Q = 6'b000000;
				R = 6'b000000;
			end
            4'b0001: begin
				Q = 6'b000000;
				R = 6'b000001;
			end
			4'b0010: begin
				Q = 6'b000000;
				R = 6'b000010;
			end
			4'b0011: begin
				Q = 6'b000001;
				R = 6'b000000;
			end
			4'b0100: begin
				Q = 6'b000001;
				R = 6'b000001;
			end
			4'b0101: begin
				Q = 6'b000001;
				R = 6'b000010;
			end
			4'b0110: begin
				Q = 6'b000010;
				R = 6'b000000;
			end
			4'b0111: begin
				Q = 6'b000010;
				R = 6'b000001;
			end
			4'b1000: begin
				Q = 6'b000010;
				R = 6'b000010;
			end
			default begin
				Q = 6'b000000;
				R = 6'b000000;
			end
        endcase
    end
	always @(*) begin
	    // handle kernel k0 and k1 w/ countMULT
		if((countMULT >= 7'd12) & (countMULT <7'd22) )begin
			k0 = k01;
			k1 = k11;
		end
		else if((countMULT >= 7'd22) & (countMULT <7'd32) )begin
			k0 = k02;
			k1 = k12;
		end
		else if((countMULT >= 7'd32) & (countMULT <7'd42) )begin
			k0 = k03;
			k1 = k13;
		end
		else if((countMULT >= 7'd42) & (countMULT <7'd52) )begin
			k0 = k04;
			k1 = k14;
		end
		else if((countMULT >= 7'd52) & (countMULT <7'd62) )begin
			k0 = k05;
			k1 = k15;
		end
		else if((countMULT >= 7'd62) & (countMULT <7'd72) )begin
			k0 = k06;
			k1 = k16;
		end
		else if((countMULT >= 7'd72) & (countMULT <7'd82) )begin
			k0 = k07;
			k1 = k17;
		end
		else if((countMULT >= 7'd82) & (countMULT <7'd92) )begin
			k0 = k08;
			k1 = k18;
		end
		else begin
			k0 = k00;
			k1 = k10;
		end
	end
    //---------------------------- NEXT-STATE LOGIC ---------------------------//
	always @(*) begin
		if(countMULT == 7'd95)begin
			countMULTNext = 7'd6;
		end
		else
			countMULTNext = countMULT + 1;
	end

    always @(*) begin
		if(offset == 4'b1000 & doneMULT)
			offsetNext = 4'b0000;
		else if(doneMULT) begin
			offsetNext = offset + 4'b0001;
		end
		else
			offsetNext = offset;


		if(countMULT == 7'd89)begin
			//go zigzag
			if (upperLeft[`ADDRW/2] & upperLeft[0]) begin
                //Y = odd, X = odd
                upperLeftNext[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2];
				upperLeftNext[`ADDRW/2-1:0]      = upperLeft[`ADDRW/2-1:0] + 6'b000001; // X_next = X+1
            end
			else if (upperLeft[`ADDRW/2] & ~upperLeft[0] ) begin
                //Y = odd, X = even
				upperLeftNext[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2] + 6'b000001; // Y_next = Y+1
				upperLeftNext[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] - 6'b000001;     // X_next = X-1
			end
			else if ( ~upperLeft[`ADDRW/2] & upperLeft[0] ) begin
                //Y = even, X = odd
                upperLeftNext[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2];
				upperLeftNext[`ADDRW/2-1:0]      = upperLeft[`ADDRW/2-1:0] + 6'b000001; // X_next = X+1
            end
			else if ( ~upperLeft[`ADDRW/2] & ~upperLeft[0] & ( upperLeft[`ADDRW/2-1:0] == 6'b111110 ) ) begin
			    // Y = even, X = even
				upperLeftNext[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2] + 6'b000001; // Y_next = Y+1
				upperLeftNext[`ADDRW/2-1:0]      = upperLeft[`ADDRW/2-1:0] + 6'b000001;     // X_next = X+1
			end
			else begin //~upperLeft[`ADDRW/2] & ~upperLeft[0] & ( upperLeft[`ADDRW/2-1:0] != 6'b111110
				upperLeftNext[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2] - 6'b000001; // Y_next = Y-1
				upperLeftNext[`ADDRW/2-1:0]      = upperLeft[`ADDRW/2-1:0] + 6'b000001;     // X_next = X+1
			end
		end
		else
			upperLeftNext = upperLeft;
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
			countMULT <= countMULTNext; // one more register , but it can do many thing !
        end
        else begin
            // RESET
			upperLeft <= 12'hFFF;
			offset <= 4'b0000;
			countMULT <= 7'd0;
			sumResult0 <= 0;
			sumResult1 <= 0;
            convResult0 <= 0;
            convResult1 <= 0;
        end
    end

endmodule
