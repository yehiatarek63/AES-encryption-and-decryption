module InverseMultiplication(state, matrix, outputstate);
input state;
wire [7:0] state;
input matrix;
wire [3:0] matrix;
output outputstate;
reg [7:0] outputstate;
reg[7:0] temp;
reg[7:0] temp2;
reg[7:0] temp3;
integer i;

always@*
	begin
		if (matrix == 4'he)
			begin
				if(state[7] == 0)
					temp = state << 1;
				else
					begin
						temp = {state[6:0], 1'b0};
						temp = temp ^ 8'h1B;
					end
				if(temp[7] == 0)
					temp2 = temp << 1;
				else
					begin
						temp2 = {temp[6:0], 1'b0};
						temp2 = temp2 ^ 8'h1B;
					end
				if(temp2[7] == 0)
					temp3 = temp2 << 1;
				else
					begin
						temp3 = {temp2[6:0], 1'b0};
						temp3 = temp3 ^ 8'h1B;
					end	
				outputstate = temp ^ temp3 ^ temp2;
			end
		else if(matrix == 4'h9)
			begin
				if(state[7] == 0)
					temp = state << 1;
				else
					begin
						temp = {state[6:0], 1'b0};
						temp = temp ^ 8'h1B;
					end
				if(temp[7] == 0)
					temp2 = temp << 1;
				else
					begin
						temp2 = {temp[6:0], 1'b0};
						temp2 = temp2 ^ 8'h1B;
					end
				if(temp2[7] == 0)
					temp3 = temp2 << 1;
				else
					begin
						temp3 = {temp2[6:0], 1'b0};
						temp3 = temp3 ^ 8'h1B;
					end
				outputstate = temp3 ^ state;
			end
		else if(matrix == 4'hb)
			begin
				if(state[7] == 0)
					temp = state << 1;
				else
					begin
						temp = {state[6:0], 1'b0};
						temp = temp ^ 8'h1B;
					end
				if(temp[7] == 0)
					temp2 = temp << 1;
				else
					begin
						temp2 = {temp[6:0], 1'b0};
						temp2 = temp2 ^ 8'h1B;
					end
				if(temp2[7] == 0)
					temp3 = temp2 << 1;
				else
					begin
						temp3 = {temp2[6:0], 1'b0};
						temp3 = temp3 ^ 8'h1B;
					end
				outputstate = temp3 ^ temp ^ state;	
			end
		else
			begin
				if(state[7] == 0)
					temp = state << 1;
				else
					begin
						temp = {state[6:0], 1'b0};
						temp = temp ^ 8'h1B;
					end
				if(temp[7] == 0)
					temp2 = temp << 1;
				else
					begin
						temp2 = {temp[6:0], 1'b0};
						temp2 = temp2 ^ 8'h1B;
					end
				if(temp2[7] == 0)
					temp3 = temp2 << 1;
				else
					begin
						temp3 = {temp2[6:0], 1'b0};
						temp3 = temp3 ^ 8'h1B;
					end	
				outputstate = state ^ temp3 ^ temp2;
			
			
			
			
			
			end
	end
	
	
endmodule
