module spitb();
reg clk;
reg[127:0] plaintext;
reg [127:0]key128;
reg[191:0] key192;
reg[255:0] key256;
reg[127:0]expectedcypher128 = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;
reg[127:0]expectedcypher192 = 128'hdda97ca4864cdfe06eaf70a0ec0d7191;
reg[127:0]expectedcypher256 = 128'h8ea2b7ca516745bfeafc49904b496089;
reg enable;
reg reset;
wire[127:0] finalencrypted128;
wire[127:0] finaldecrypted128;
wire[127:0] finalencrypted192;
wire[127:0] finaldecrypted192;
wire[127:0] finalencrypted256;
wire[127:0] finaldecrypted256;
wire e128;
wire d128;
wire e192;
wire d192;
wire e256;
wire d256;


AESmaster#(128) encrypt128(
	.clk(clk),
	.plaintext(plaintext),
	.key(key128),
	.enable(enable),
	.reset(reset),
	.finalencrypted(finalencrypted128),
	.finaldecrypted(finaldecrypted128)
);


AESmaster#(192) encrypt192(
	.clk(clk),
	.plaintext(plaintext),
	.key(key192),
	.reset(reset),
	.enable(enable),
	.finalencrypted(finalencrypted192),
	.finaldecrypted(finaldecrypted192)
);

AESmaster#(256) encrypt256(
	.clk(clk),
	.plaintext(plaintext),
	.key(key256),
	.enable(enable),
	.reset(reset),
	.finalencrypted(finalencrypted256),
	.finaldecrypted(finaldecrypted256)
);


always
begin
#5 clk = ~clk;
end

assign e128 = (finalencrypted128 == expectedcypher128) ? 1 : 0;
assign d128 = (finaldecrypted128 == plaintext) ? 1 : 0;
assign e192 = (finalencrypted192 == expectedcypher192) ? 1 : 0;
assign d192 = (finaldecrypted192 == plaintext) ? 1 : 0;
assign e256 = (finalencrypted256 == expectedcypher256) ? 1 : 0;
assign d256 = (finaldecrypted256 == plaintext) ? 1 : 0;


initial begin
clk = 1;
enable = 1;
reset = 0;
plaintext = 128'h00112233445566778899aabbccddeeff;
key128 = 128'h000102030405060708090a0b0c0d0e0f;
key192 = 192'h000102030405060708090a0b0c0d0e0f1011121314151617;
key256 = 256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;





end








endmodule