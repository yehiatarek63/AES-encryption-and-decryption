module AESencryption#(parameter N = 128)(plaintext, key, cyphertext,clk,enable);



parameter r = (N == 128) ? {4'b1010} : (N == 192) ? {4'b1100} : {4'b1110};
parameter k = (N == 128) ? {4'b1010} : (N == 192) ? {4'b1000} : {4'b0111};
parameter extrasize = (N == 128) ? {7'b0000000} : (N == 192) ? {7'b1000000} : {8'b10000000};
reg [127:0]currstate;
wire [127:0] nextstate;
reg [127:0] currcorrect;
input plaintext;
input clk;
input enable;
wire [127:0] plaintext;
input key;
wire [N - 1:0] key;
output cyphertext;
wire [127:0] cyphertext;
wire [(k*N) - 1:0] allkeys;
wire [(k*N) + extrasize - 1:0] correctedkeys;
wire [127:0] rounds;
wire [127:0] temp1;
wire [127:0] temp2;
integer i=0;


generate
    if (N == 256) begin
        allkeyexpansion256 ex(
            .key(key),
            .allkeys(allkeys)
        );
    end else begin
        allkeyexpansion#(N) expand(
            .key(key),
            .allkeys(allkeys)
        );
    end
endgenerate




Addroundkey add1(
	.state(plaintext),
	.keystate(key[N - 1: N - 128]),
	.outputstate(rounds[127:0])
);

assign correctedkeys = (N == 128) ? allkeys : (N == 192) ? {key[63:0], allkeys} : {key[127:0], allkeys};
encryptionround oneround(
	.state(currstate),
	.keystate(currcorrect),
	.outputstate(nextstate)
);

integer j;
always @(posedge clk) begin
	if(enable) begin
		if(i==0) begin
			currstate=rounds[127:0];
			i=i+1;
			for(j=0;j<128;j=j+1) begin
					currcorrect[j]=correctedkeys[(k*N + extrasize - 1)- 127+j];
				end
		end
		else begin
			if(i<(r)) begin
				currstate=nextstate;
				for(j=0;j<128;j=j+1) begin
					currcorrect[j]=correctedkeys[(k*N + extrasize - 1) - i*128 - 127+j];
				end
				i=i+1;
			end
		end

	end
	else
	i=0;
end

subbytes#(128) sub(
		.state(currstate),
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