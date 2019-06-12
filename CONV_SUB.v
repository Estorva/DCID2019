`ifndef DATAW
`define DATAW 20
// width of data
`define ADDRW 12
// width of address
`endif

module MULT(//Because we have to add 8 times by booth encoding method , we must cut pipeline
    input clk,
	input reset,
	input [`DATAW-1:0] A, //input cData
    input [`DATAW-1:0] B, //input k0
	input enMULT, 		//If enMULT = 1 , we update count in MULT
    output [`DATAW-1:0] Y,
	output doneMULT //doneMULT = 1 can only maintain one cycle and must be in the previous cycle we leave.
    );

    /*-------------------------------- SPEC ----------------------------------//
        INPUT:  A, B: multiplicand and multiplier
        OUTPUT: Y: product of A and B

        A, B, and Y are all (non-formal) float point numbers, w/ 4 MSB's
        representing a signed integer and the rest 16 bits number after
        the radix point.
    //------------------------------------------------------------------------*/
    // TODO
	//We need a signal to reset count and Ans .
	//When we start mult function, we reset count and Ans
	wire [`DATAW-5:0] Mc; //16-bit Multiplicand (textbook Y) (A)
	wire [`DATAW-5:0] Mp; //16-bit Multiplier (textbook X) (B)
	reg [`DATAW:0] PP; //17-bit Partial product
	reg [2*(`DATAW-4)-1:0] Ans; //32-bit Correct Answer
	reg [2*(`DATAW-4)-1:0] AnsNext;
	reg [2:0] inputs; // inputs : x_2i+1 x_2i x_2i-1 8 possibility
	reg [3:0] count; //from 0 to 8 , PP0 -> PP8
	reg [3:0] countNext;
	//signed haven't written
	wire signA ;
	wire signB ;
	wire signCorrect ; //the sign of final result
	reg sign;// For PP
	assign signA = A[`DATAW-1]; //signA/signB/signCorrect can be replaced
	assign signB = B[`DATAW-1];
	assign signCorrect = signA^signB; //determine output Y positive or negative
	assign Mc = (~A[`DATAW-5:0] & {`DATAW-4{signA}}) |  (A[`DATAW-5:0] & {`DATAW-4{~signA}}) ; //Need to consider positive or negative
	assign Mp = (~B[`DATAW-5:0] & {`DATAW-4{signB}}) |  (B[`DATAW-5:0] & {`DATAW-4{~signB}}); //Assume unsigned value multiply to each other
	assign Y =  {{4{signCorrect}},( {(`DATAW-4){signCorrect}} & ~(Ans[2*(`DATAW-4)-1:`DATAW-4]+Ans[`DATAW-5])
				| {(`DATAW-4){~signCorrect}} & (Ans[2*(`DATAW-4)-1:`DATAW-4]+Ans[`DATAW-5]) )}; //if Ans[15] = 1 , which means the 17th bit is 1, we have to round it and plus 1 to 16-bit Ans
	assign doneMULT = (count == 4'b1000); //if doneMULT = 1 , we update offset
	///combinational
	always @(*) begin //cut "pipeline" to 8 addition
		if(count == 4'b0000 ) inputs = { Mp[1:0] , 1'b0};
		else if (count == 4'b1000) inputs = { 2'b00 , Mp[`DATAW-5] };
		//else inputs = {Mp[(count << 1)+1:(count << 1)-1]};
		else inputs = Mp[((count<<1)+1)-:3];
		//$display("count = %b", count);
		//inputs determined by Multiplier Mp ( textbook X ) and count
		case (inputs)
			3'b000: PP = 0;
			3'b001: PP = Mc;
			3'b010: PP = Mc;
			3'b011: PP = Mc << 1;
			3'b100:	PP = ~(Mc << 1);
			3'b101: PP = ~Mc;
			3'b110: PP = ~Mc;
			3'b111:	PP = 0;
			default: PP = 0;
		endcase
		sign = PP[`DATAW];
		//AnsNext must reset when enMULT = 0 .
		if(~enMULT) AnsNext = 0; //In order to reset Ans , we must delay one cycle .
		else begin
			case (count)
				4'b0000: AnsNext = Ans + {~sign,{2{sign}},PP};
				4'b0001: AnsNext = Ans + ({1'b1,~sign,PP} << 2);
				4'b0010: AnsNext = Ans + ({1'b1,~sign,PP} << 4);
				4'b0011: AnsNext = Ans + ({1'b1,~sign,PP} << 6);
				4'b0100: AnsNext = Ans + ({1'b1,~sign,PP} << 8);
				4'b0101: AnsNext = Ans + ({1'b1,~sign,PP} << 10);
				4'b0110: AnsNext = Ans + ({1'b1,~sign,PP} << 12);
				4'b0111: AnsNext = Ans + ({~sign,PP} << 14);
				4'b1000: AnsNext = Ans + (PP[`DATAW-5:0]<< 16);
				default: AnsNext = Ans;
			endcase
		end
	end
	always @(*) begin
		//Update count
		if( enMULT  ) begin //As enMULT = 0 , we reset count
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
			//$display("Ans = %h",Ans);
		end
		else begin
		//RESET
			Ans <= 0;
			count <= 0;
		end
	end
endmodule


module RELU(A, Bi, Y);//Combine bias and RELU
    input  [`DATAW-1 : 0] A;
	input  [`DATAW-1 : 0] Bi; //Bias
    output [`DATAW-1 : 0] Y;
	wire   [`DATAW-1 : 0] biasResult;
	assign biasResult = A + Bi; //just add directly regardless of positive or negative
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
    output                done
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
				(Y, X) = upperLeft + (1, 1)
                (0, 0)  -> (0, 1)  -> (1, 0)  -> (1, 1)
			 -> (0, 2)  -> (0, 3)  -> (1, 2)  -> (1, 3)...
         ... -> (62,62) -> (62,63) -> (63,62) -> (63,63) finish all the conv

    //------------------------------------------------------------------------*/

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
    reg  [`DATAW-1 : 0] addend0;
    reg  [`DATAW-1 : 0] addend1;
    // operand of addition, from multResult
    reg  [`DATAW-1 : 0] sumResultNext0;
    reg  [`DATAW-1 : 0] sumResultNext1;
    reg  [`DATAW-1 : 0] sumResult0;
    reg  [`DATAW-1 : 0] sumResult1;
    reg  [`DATAW-1 : 0] convResultNext0;
    reg  [`DATAW-1 : 0] convResultNext1;
    reg  [`DATAW-1 : 0] convResult0;
    reg  [`DATAW-1 : 0] convResult1;
    reg  [`ADDRW-1 : 0] upperLeft;
    reg  [`ADDRW-1 : 0] upperLeftNext;
    reg  [3:0]          offset;
    // the offset to be applied to upperLeft for points in a convolution window
    reg  [3:0]          offsetNext;
	reg  [`ADDRW/2-1:0] Q; //Quotient from 0 to 2
	reg  [`ADDRW/2-1:0] R; //Remainder from 0 to 2
	reg  [3:0]			countMULT;//Control enMULT/updateSum/updateResult and update upperLeft in the last cycle
	reg	 [3:0]			countMULTNext;
    reg                 updateResult_; // delay

	wire				updateSum; //As ... , we update sumResult .(Addend/AddResult 會一直變需要定義什麼時候才要update sum)
    wire 				updateResult; //As count = 10 , we let updateResult = 1;
	// when high, assign convResultNext w/ reluResult
    // this signal can only maintain high for 1 cycle
	//As reluOK = 1 ,convResult is updated .
	//reg  [3:0]			count; //用 offset及 upperLeft 來定義 count 來 減少使用count
    wire [`DATAW-1 : 0] multResult0;
    wire [`DATAW-1 : 0] multResult1;
    wire [`DATAW-1 : 0] addResult0;
    wire [`DATAW-1 : 0] addResult1;
    wire [`DATAW-1 : 0] reluResult0;
    wire [`DATAW-1 : 0] reluResult1;
    wire                resetSum;
    // when high, assign sumResultNext w/ 0
	wire 				enMULT;
	wire 				doneMULT;

    //----------------------------- ASSIGNMENT -------------------------------//
	//As both offset and countMULT are not 0 or offset is zero and countMULT is at least two , we set enMULT =1

	assign enMULT = (countMULT != 4'b0000 & offset != 4'b0000 ) | ( countMULT[3] | countMULT[2] | countMULT[1] & (offset == 4'b0000) );
	assign resetSum = (offset==4'b0000);
	assign updateSum =  (offset!=4'b0000 & countMULT == 4'b0001);//If updateSum = 1 , we plus addend to sumResult.
	assign updateResult = (offset==4'b1001 & countMULT == 4'b0010);//If updateResult = 1 , we update convResult w/ reluResult.
    assign resultK0 = convResult0;
    assign resultK1 = convResult1;
    assign done = updateResult_;
    //done(updateResult) can only maintain high for 1 cycle and  must be in the previous cycle we leave
	assign addResult0 = addend0 + sumResult0;
    assign addResult1 = addend1 + sumResult1;
	assign addrWr = upperLeft + {6'b000001,6'b000001};// output original upperLeft + (1,1)
	//assign addrRd = {upperLeft[`ADDRW-1:`ADDRW/2] + {`ADDRW/2{offset/3}}, upperLeft[`ADDRW/2-1:0] + {`ADDRW/2{offset%3}}};
	assign addrRd = {upperLeft[`ADDRW-1:`ADDRW/2] + Q , upperLeft[`ADDRW/2-1:0] + R};
	// divider "/" 只能用在除以2的冪次方

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
        // TODO
		//Assign cDataNext to iData or 0
		//Maybe have better method to write
		//$display("enMULT = %b",enMULT);
		//$display("doneMULT = %b",doneMULT);
		//$display("offset = %b ",offset);
		//$display("Q = %b",Q);
		//$display("R = %b",R);
		//$display("countMULT = %b" , countMULT);
		//$display("addrRd = %b ",addrRd);
		//$display("addrWr = %b ",addrWr);
		if(upperLeft[`ADDRW-1:`ADDRW/2] == 6'b111111 & (offset == 4'b0000 | offset == 4'b0001 | offset == 4'b0010)) cDataNext = 0;
		else if(upperLeft[`ADDRW/2-1:0] == 6'b111111 & (offset == 4'b0000 | offset == 4'b0011 | offset == 4'b0110)) cDataNext = 0;
		else if(upperLeft[`ADDRW-1:`ADDRW/2] == 6'b111110 & (offset == 4'b0010 | offset == 4'b0101 | offset == 4'b1000)) cDataNext = 0;
		else if(upperLeft[`ADDRW/2-1:0] == 6'b111111 & (offset == 4'b0110 | offset == 4'b0111 | offset == 4'b1000)) cDataNext = 0;
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
		//sumResultNext0 = (updateSum ? addResult0 : sumResult0);//Use en as trigger to update offsetNext, if en = 0 , resetSum always be 1
		//sumResultNext1 = (updateSum ? addResult1 : sumResult1);
		if(updateResult) begin //updateResult
			convResultNext0 = reluResult0;
			convResultNext1 = reluResult1;
		end
		else begin
			convResultNext0 = convResult0;
			convResultNext1 = convResult1;
		end
		//convResultNext0 = (updateResult ? reluResult0 : convResult0);
		//convResultNext1 = (updateResult ? reluResult1 : convResult1);
    end

    always @(*) begin
        // handle kernel k0 and k1 here
		//deal with addrRd w/ Quotient Q and Remainder R
        case (offset)
            4'b0000: begin
                k0 = k00;
                k1 = k10;
				Q = 6'b000000;
				R = 6'b000000;
			end
            4'b0001: begin
				k0 = k01;
				k1 = k11;
				Q = 6'b000000;
				R = 6'b000001;
			end
			4'b0010: begin
				k0 = k02;
				k1 = k12;
				Q = 6'b000000;
				R = 6'b000010;
			end
			4'b0011: begin
				k0 = k03;
				k1 = k13;
				Q = 6'b000001;
				R = 6'b000000;
			end
			4'b0100: begin
				k0 = k04;
				k1 = k14;
				Q = 6'b000001;
				R = 6'b000001;
			end
			4'b0101: begin
				k0 = k05;
				k1 = k15;
				Q = 6'b000001;
				R = 6'b000010;
			end
			4'b0110: begin
				k0 = k06;
				k1 = k16;
				Q = 6'b000010;
				R = 6'b000000;
			end
			4'b0111: begin
				k0 = k07;
				k1 = k17;
				Q = 6'b000010;
				R = 6'b000001;
			end
			4'b1000: begin
				k0 = k08;
				k1 = k18;
				Q = 6'b000010;
				R = 6'b000010;
			end
			default begin
				k0 = k00;
				k1 = k10;
				Q = 6'b000000;
				R = 6'b000000;
			end
        endcase
    end

    //---------------------------- NEXT-STATE LOGIC ---------------------------//

    always @(*) begin
        // update count and upperLeft here
		//update countMULT and offset using en and doneMULT
		//if(en) begin
		//en is always on until 64 convolution finishes
			//upperLeftNext = upperLeft;
			if(offset==4'b1001 & countMULT == 4'b0010)
				offsetNext = 4'b0000;
				//countMULT =       ;
			else if(doneMULT) begin
				offsetNext = offset + 4'b0001;
				countMULTNext = 4'b0000;//countMULTNext reset
			end
			else begin
				countMULTNext = countMULT + 4'b0001;
				offsetNext = offset;
			end

		//end
		//else begin
			//offsetNext = 4'b0000;
			//countMULTNext = 4'b0000;
		//end

		//update upperLeft using offset and countMULT without using en .
		if(offset==4'b1001 & countMULT == 4'b0010)begin //Therefore, we can let en = 0 when convResult is updated and update UpperLeft next cycle.
			//go zigzag									//Although , we have left CONV_SUB :)
			if(upperLeft[`ADDRW/2] & upperLeft[0] )//Y = odd, X = odd
				upperLeftNext[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] + 6'b000001; // X_next = X+1
			else if(upperLeft[`ADDRW/2] & ~upperLeft[0] ) //Y = odd, X = even
			begin
				upperLeftNext[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2] + 6'b000001; // Y_next = Y+1
				upperLeftNext[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] - 6'b000001;     // X_next = X-1
			end
			else if( ~upperLeft[`ADDRW/2] & upperLeft[0] )  //Y = even, X = odd
				upperLeftNext[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] + 6'b000001; // X_next = X+1
			else if( ~upperLeft[`ADDRW/2] & ~upperLeft[0] & ( upperLeft[`ADDRW/2-1:0] == 6'b111110 ) )
			begin// Y = even, X = even
				upperLeftNext[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2] + 6'b000001; // Y_next = Y+1
				upperLeftNext[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] + 6'b000001;     // X_next = X+1
			end
			else //~upperLeft[`ADDRW/2] & ~upperLeft[0] & ( upperLeft[`ADDRW/2-1:0] != 6'b111110
				begin
					upperLeftNext[`ADDRW-1:`ADDRW/2] = upperLeft[`ADDRW-1:`ADDRW/2] - 6'b000001; // Y_next = Y-1
					upperLeftNext[`ADDRW/2-1:0] = upperLeft[`ADDRW/2-1:0] + 6'b000001;     // X_next = X+1
				end

		end
		else
			upperLeftNext = upperLeft;
		//$display("upperLeftNext is %b",upperLeftNext);
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
            updateResult_ <= updateResult;
        end
        else begin
            // RESET
			upperLeft <= {6'b111111,6'b111111};
			offset <= 4'b0000;
			countMULT <= 4'b0000;
            convResult0 <= 0;
            convResult1 <= 0;
            updateResult_ <= 0;
        end
    end

endmodule
