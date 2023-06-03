module keyexpansion #(parameter N = 128, parameter iterator = 0) (keystate, outputstate);
input keystate;
wire [N-1:0] keystate;
output outputstate;
reg [N-1:0] outputstate;
wire [31:0] temp;
reg[79:0] Rcon = 80'h01020408102040801B36;
genvar i;
genvar j;


parameter rounds = (N == 128) ? {3'b011} : (N == 192) ? {3'b101} : {3'b111};

subbytes #(32) sub(
			.state({keystate[23:0], keystate[31:24]}),
			.outputstate(temp)
		);

always@*
	begin
		outputstate[N - 1 : N - 32] = temp ^ keystate[N - 1 : N - 32] ^ {Rcon[79 - iterator*8 :72- iterator * 8], 24'b0};
	end
	
	
	
generate	
			for(i = 0;i < rounds ;i = i + 1) begin: generatekey
				begin
					
					always@*
						begin		
							outputstate[N - 1 - 32*(i + 1): N - 1 - 32*(i + 1) - 31] = outputstate[N - 1 - (32*i) : N - 1 - 32*i - 31] ^ keystate[N - 1 - 32*i - 32: N - 1 - 32*(i + 1) - 31];
						end	

				
				end	
			end
endgenerate

	//				outputstate[95:64] = outputstate[127:96] ^ keystate[95:64];
	//				outputstate[63:32] = outputstate[95:64] ^ keystate[63:32];
	//				outputstate[31:0] = outputstate[63:32] ^ keystate[31:0];

endmodule