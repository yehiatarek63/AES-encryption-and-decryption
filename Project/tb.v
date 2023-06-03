module tb();
reg clk;
reg[127:0] plaintext = 128'h00112233445566778899aabbccddeeff;
reg [127:0]key128 = 128'h000102030405060708090a0b0c0d0e0f;
//reg[191:0] key192 = 192'h000102030405060708090a0b0c0d0e0f1011121314151617;
//reg[255:0]key256 = 256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
reg reset;
reg[127:0]expectedcypher128 = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;
//reg[127:0]expectedcypher192 = 128'hdda97ca4864cdfe06eaf70a0ec0d7191;
reg [127:0] cyphertext128;
reg [127:0] decrypted128;
//wire [127:0] cyphertext192;
//wire [127:0] decrypted192;
//wire [127:0] cyphertext256;
//wire [127:0] decrypted256;
reg enableenc;
reg enabledec;
reg in;
wire out;
wire out2;
reg chipencrypt;
reg chipdecrypt;
SpiAes#(128) spi(
	.clk(clk),
	.in(in),
	.enable(enableenc),
	.reset(reset),
	.out(out),
	.chip(chipencrypt)
);

SpiAesdecryption#(128) dec(
.clk(clk),
	.in(in),
	.enable(enabledec),
	.reset(reset),
	.out(out2),
	.chip(chipdecrypt)
);


always begin
#5 clk=~clk;
end
integer i;
initial begin
clk=1;
enableenc=1;
enabledec=0;
chipencrypt=0;
chipdecrypt=1;
reset=0;
#5;
for(i=0;i<128;i=i+1) begin
in=plaintext[i];
#10;
end

for(i=0;i<128;i=i+1) begin
in=key128[i];
#10;
end
#205;
for(i=0;i<128;i=i+1) begin
cyphertext128[i]=out;
#10;
end

chipencrypt = 1;
chipdecrypt = 0;
enableenc = 0;
enabledec = 1;
#5;

for(i=0;i<128;i=i+1) begin
in=cyphertext128[i];
#10;
end

for(i=0;i<128;i=i+1) begin
in=key128[i];
#10;
end
#205;
for(i=0;i<128;i=i+1) begin
decrypted128[i]=out2;
#10;
end

end

endmodule

