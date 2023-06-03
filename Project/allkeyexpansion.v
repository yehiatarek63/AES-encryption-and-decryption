module allkeyexpansion#(parameter N = 128)(key, allkeys);	


	parameter rounds = (N == 128) ? {4'b1010} : (N == 192) ? {4'b1000} : {4'b0111};
	input key;
	wire [N - 1:0] key;
	output allkeys;
	wire [N*rounds - 1:0] allkeys;
	
	genvar i;
	
	
	
	
	
	keyexpansion#(N,0) initialexpand(
		.keystate(key),
		.outputstate(allkeys[N*rounds - 1:N*rounds - N])
	);
	
	
	generate
		for(i = 1; i < rounds; i = i + 1) begin:allkeys1
			begin
				keyexpansion#(N ,i) expand(
					.keystate(allkeys[(N*rounds - 1) -i*N + N : (N*rounds - 1) -i*N + 1]),
					.outputstate(allkeys[(N*rounds - 1) -(i*N) : (N*rounds - 1) -(i*N) - (N - 1)])
				);
			end
		end
	endgenerate

endmodule
