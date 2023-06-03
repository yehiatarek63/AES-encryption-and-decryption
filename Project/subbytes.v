module subbytes #(parameter N = 128)(state, outputstate);
input state;
wire[N-1:0] state;
output outputstate;
wire [N-1:0] outputstate;


genvar i;
integer j;







generate
	for(i = 0; i < N; i = i + 8) begin : generatesbox
		begin
			S_box sbox1(
				.statebyte({state[i+7:i]}),
				.outputbyte({outputstate[i+7:i]})
			);
		end
	end
endgenerate

endmodule