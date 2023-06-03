module AES(fclk, enable, reset, e128, d128, e192, d192, e256, d256);
input fclk;
input enable;
input reset;
output e128;
output d128;
output e192;
output d192;
output e256;
output d256;
reg[127:0] plaintext = 128'h00112233445566778899aabbccddeeff;
reg[127:0] key128 = 128'h000102030405060708090a0b0c0d0e0f;
wire[127:0] encrypted128;
wire[127:0] decrypted128;
reg[127:0] expectedencrypted128 = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;
reg[191:0] key192 = 192'h000102030405060708090a0b0c0d0e0f1011121314151617;
wire[127:0] encrypted192;
wire[127:0] decrypted192;
reg[127:0] expectedencrypted192 = 128'hdda97ca4864cdfe06eaf70a0ec0d7191;
reg[255:0] key256 = 256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
wire[127:0] encrypted256;
wire[127:0] decrypted256;
reg[127:0] expectedencrypted256 = 128'h8ea2b7ca516745bfeafc49904b496089;
reg clk=0;

//AESmaster#(256) encrypt256(
//	.clk(clk),
//	.plaintext(plaintext),
//	.key(key256),
//	.enable(enable),
//	.reset(reset),
//	.finalencrypted(encrypted256),
//	.finaldecrypted(decrypted256)
//);
integer i=0;
always @(posedge fclk)begin
  if(i==7) begin
  clk=~clk;
  i=0;
  end
  else
  i=i+1;
end

AESmaster#(192) encrypt192(
	.clk(clk),
	.plaintext(plaintext),
	.key(key192),
	.enable(enable),
 .reset(reset),
	.finalencrypted(encrypted192),
	.finaldecrypted(decrypted192)
);

//AESmaster#(128) encrypt128(
//	.clk(clk),
//	.plaintext(plaintext),
//	.key(key128),
//	.enable(enable),
//	.reset(reset),
//	.finalencrypted(encrypted128),
//	.finaldecrypted(decrypted128)
//);


assign e128 = (enable && (encrypted128 == expectedencrypted128)) ? 1 : 0;
assign e192 = (enable && (encrypted192 == expectedencrypted192)) ? 1 : 0;
assign e256 = (enable && (encrypted256 == expectedencrypted256)) ? 1 : 0;
assign d128 = (enable && (decrypted128 == plaintext)) ? 1 : 0;
assign d192 = (enable && (decrypted192 == plaintext)) ? 1 : 0;
assign d256 = (enable && (decrypted256 == plaintext)) ? 1 : 0;













endmodule