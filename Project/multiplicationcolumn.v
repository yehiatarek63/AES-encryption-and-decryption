module multiplicationcolumn(state, matrix, outputstate);
input state;
wire[31:0] state;
input matrix;

wire [15:0] matrix;
output outputstate;
reg[7:0] outputstate;
wire [31:0] temp;
genvar i;

generate
	for(i = 0;i < 4; i = i + 1) begin : generatecolumn
		begin
			Multiplication mult(
				.state(state[31 - i * 8 : 31 - (i*8) - 7]),
				.matrix(matrix[15 -i*4 :15 - (i*4) - 3]),
				.outputstate(temp[31 - i * 8 : 31 - (i*8) - 7])
			);
		end
		
	end
	
	always@*
			begin
				outputstate = temp[31:24] ^ temp[23:16] ^ temp[15:8] ^ temp[7:0];
			
			end
	
	
endgenerate


endmodule