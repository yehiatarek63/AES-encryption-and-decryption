module Multiplication(state, matrix, outputstate);
input state;
wire [7:0] state;
input matrix;
wire [3:0] matrix;
output outputstate;
reg [7:0] outputstate;


always@*
	begin
		if(matrix == 4'b0001)
			outputstate = state;
		else if(matrix == 4'b0010 & state[7] == 0)
			outputstate = state << 1;
		else if(matrix == 4'b0010 & state[7] == 1)
			begin
				outputstate = {state[6:0], 1'b0};
				outputstate = outputstate ^ 8'h1B;
			end
		else
			begin
				if(state[7] == 0)
						outputstate = state << 1;
				else 
					begin
						outputstate = {state[6:0], 1'b0};
						outputstate = outputstate ^ 8'h1B;
					end
			outputstate = outputstate ^ state;
			end
	
	
	end







endmodule