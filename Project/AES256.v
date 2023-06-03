module AES256(plaintext, key, cyphertext);


parameter N = 256;
parameter r = {4'b1110};
parameter k = {4'b0111};
parameter extrasize = {8'b10000000};

input plaintext;
wire [127:0] plaintext;
input key;
wire [N - 1:0] key;
output cyphertext;
wire [127:0] cyphertext;
wire [(k*N) - 1:0] allkeys;
wire [(k*N) + extrasize - 1:0] correctedkeys;
wire [128*r - 1:0] rounds;
wire [127:0] temp1;
wire [127:0] temp2;
genvar i;



allkeyexpansion256 expand(
	.key(key),
	.allkeys(allkeys)
);

Addroundkey add1(
	.state(plaintext),
	.keystate(key[N - 1: N - 128]),
	.outputstate(rounds[128*r - 1:128*r - 128])
);

assign correctedkeys = {key[127:0], allkeys};

generate
	for(i = 0; i< (r - 1); i = i + 1) begin:encrypt
		begin
			encryptionround oneround(
				.state(rounds[(128*r - 1) - i*128 : (128*r - 1) - i*128 - 127]),
				.keystate(correctedkeys[(k*N + extrasize - 1) - i*128 : (k*N + extrasize - 1) - i*128 - 127]),
				.outputstate(rounds[(128*r - 1) - i*128 - 128 : (128*r - 1) - i*128 - 255])
			);
		end
		
	end
endgenerate



subbytes#(128) sub(
		.state(rounds[127: 0]),
		.outputstate(temp1)
);
shiftrows shift(
		.state(temp1),
		.outputstate(temp2)
);
Addroundkey addfinal(
		.state(temp2),
		.keystate(correctedkeys[N - 1: N - 128]),
		.outputstate(cyphertext)
);



endmodule