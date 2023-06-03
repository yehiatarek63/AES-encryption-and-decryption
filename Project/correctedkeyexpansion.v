module correctedkeyexpansion#(parameter iterator = 0)(keystate, outputstate);
input keystate;
wire [255:0] keystate;
output outputstate;
wire[255:0] outputstate;
wire [255:0] initialexpand;
wire [31:0] outputsubbyte;
wire [31:0] temp1;
wire [31:0] temp2;
wire [31:0] temp3;
wire [31:0] temp4;

keyexpansion#(256, iterator) expand(
	.keystate(keystate),
	.outputstate(initialexpand)
);


subbytes#(32) sub(
	.state(outputstate[159:128]),
	.outputstate(outputsubbyte)
);

assign temp1 = outputsubbyte ^ keystate[127:96];
assign temp2 = temp1 ^ keystate[95:64];
assign temp3 = temp2 ^ keystate[63:32];
assign temp4 = temp3 ^ keystate[31:0];

assign outputstate = {initialexpand[255:128], temp1, temp2, temp3, temp4};

endmodule