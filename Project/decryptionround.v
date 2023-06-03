module decryptionround(state, keystate, outputstate);
input state;
input keystate;
output outputstate;
wire [127:0] state;
wire [127:0] keystate;
wire [127:0] outputstate;
wire [127:0] temp1;
wire [127:0] temp2;
wire [127:0] temp3;

Inverse_shiftrows shiftround(
	.state(state),
	.outputstate(temp1)
);
Inverse_subbytes#(128) subround(
	.state(temp1),
	.outputstate(temp2)
);
Addroundkey addround(
	.state(temp2),
	.keystate(keystate),
	.outputstate(temp3)
);
Inverse_mixcolumns mixround(
	.state(temp3),
	.outputstate(outputstate)
);

endmodule