module encryptionround(state, keystate, outputstate);
input state;
input keystate;
output outputstate;
wire [127:0] state;
wire [127:0] keystate;
wire [127:0] outputstate;
wire [127:0] temp1;
wire [127:0] temp2;
wire [127:0] temp3;



subbytes#(128) subround(
	.state(state),
	.outputstate(temp1)
);
shiftrows shiftround(
	.state(temp1),
	.outputstate(temp2)
);
mixcolumns mixround(
	.state(temp2),
	.outputstate(temp3)
);
Addroundkey addround(
	.state(temp3),
	.keystate(keystate),
	.outputstate(outputstate)
);




endmodule