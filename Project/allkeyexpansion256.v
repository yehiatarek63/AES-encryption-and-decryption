module allkeyexpansion256(key, allkeys);	

	parameter N = 256;
	parameter rounds = {4'b0111};
	input key;
	wire [255:0] key;
	output allkeys;
	wire [1791:0] allkeys;
	
	genvar i;
	
	
	
	
	
	correctedkeyexpansion#(0) initialexpand(
		.keystate(key),
		.outputstate(allkeys[N*rounds - 1:N*rounds - N])
	);
	
	
	generate
		for(i = 1; i < rounds; i = i + 1) begin:allkeys1
			begin
				correctedkeyexpansion#(i) expand(
					.keystate(allkeys[(N*rounds - 1) -i*N + N : (N*rounds - 1) -i*N + 1]),
					.outputstate(allkeys[(N*rounds - 1) -(i*N) : (N*rounds - 1) -(i*N) - (N - 1)])
				);
			end
		end
	endgenerate

endmodule
