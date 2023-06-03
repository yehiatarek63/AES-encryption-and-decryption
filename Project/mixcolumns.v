module mixcolumns(state, outputstate);
input state;
wire [127:0] state;
output outputstate;
wire [127:0] outputstate;
reg[63:0] matrix = 64'h2311123111233112;
genvar i;




generate
	for(i = 0;i < 4; i = i + 1) begin: generatemixcolumn1
		begin
			multiplicationcolumn mult(
				.state(state[127:96]),
				.matrix(matrix[63 - i*16: 63 - i*16 -15]),
				.outputstate(outputstate[127 - i*8 : 127 - i*8 - 7])
			);
		end
	end
	
	
		
endgenerate

generate
	for(i = 0;i < 4; i = i + 1) begin: generatemixcolumn2
		begin
			multiplicationcolumn mult(
				.state(state[95:64]),
				.matrix(matrix[63 - i*16: 63 - i*16 -15]),
				.outputstate(outputstate[95 - i*8 : 95 - i*8 - 7])
			);
		end
	end
	
	
		
endgenerate


generate
	for(i = 0;i < 4; i = i + 1) begin: generatemixcolumn3
		begin
			multiplicationcolumn mult(
				.state(state[63:32]),
				.matrix(matrix[63 - i*16: 63 - i*16 -15]),
				.outputstate(outputstate[63 - i*8 : 63 - i*8 - 7])
			);
		end
	end
	
	
		
endgenerate
generate
	for(i = 0;i < 4; i = i + 1) begin: generatemixcolumn4
		begin
			multiplicationcolumn mult(
				.state(state[31:0]),
				.matrix(matrix[63 - i*16: 63 - i*16 -15]),
				.outputstate(outputstate[31 - i*8 : 31 - i*8 - 7])
			);
		end
	end
	
	
		
endgenerate






endmodule