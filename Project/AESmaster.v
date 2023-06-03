module AESmaster#(parameter N = 128)(clk, plaintext, key, enable, reset, finalencrypted, finaldecrypted);


input clk;
input plaintext;
input key;
input reset;
input enable;
output finalencrypted;
output finaldecrypted;
wire [127:0] plaintext;
wire[N - 1:0] key;
reg[127:0] finalencrypted;
reg[127:0] finaldecrypted;
reg[127:0] encrypted;
reg[127:0] decrypted;
wire[128 + N - 1:0] alldata;
wire[128 + N - 1:0] alldataencrypted;
reg chipencrypt = 0;
reg chipdecrypt = 1;
reg in;
wire out;
reg in2;
wire out2;
integer i = 0;
integer j = -1;
integer i2 = -1;
integer j2 = -1;
integer finished = 0;
integer finished2 = 0;
integer k1=0;
integer k2=0;
reg enableenc = 1;
reg enabledec = 0;

assign alldata = {key, plaintext};
assign alldataencrypted = {key, encrypted};

SpiAes#(N) spi(
	.clk(clk),
	.in(in),
	.enable(enableenc),
	.reset(reset),
	.out(out),
	.chip(chipencrypt)
);

SpiAesdecryption#(N) dec(
	.clk(clk),
	.in(in2),
	.enable(enabledec),
	.reset(reset),
	.out(out2),
	.chip(chipdecrypt)
);


always@(negedge clk or posedge reset)
	begin
	if(reset)
	begin
	i = 0;
	finished = 0;
	i2 = 0;
	end
	else
	begin
	if(enable)
	begin
		if(!chipencrypt) begin
				if(i <= (128+N - 1) && finished == 0) begin
						in = alldata[i];
						i = i + 1;
					end
				if(i == 128 + N) begin
						finished = 1;
					end
			end
	if(!chipdecrypt)
		begin
		if(i2 <=(128+N - 1) && finished2 == 0)
			begin
			in2 = alldataencrypted[i2];
			i2 = i2 + 1;
			end
		if(i2 == 128 + N)
			begin
			finished2 = 1;
			end
		
		
		end
	end
	end
	end
	
always@(posedge clk or posedge reset) begin
	if(reset) begin
		j = -1;
		j2 = -1;
		k1=0;
		k2=0;
		chipencrypt = 0;
		chipdecrypt = 1;
	end
	else begin
		if(enable)
		begin
		if(!chipencrypt) begin
						if(j <= 127 && finished == 1)
							begin
							if(k1==20) begin
							encrypted[j] = out;
							j = j + 1;
							end
							else
							k1=k1+1;
							end
						if(j == 128)
							begin
							j = -1;
							chipencrypt = 1;
							chipdecrypt = 0;
							enabledec = 1;
							enableenc = 0;
							finalencrypted = encrypted;
							end
				
			end
		if(!chipdecrypt) begin
	
					if(j2 <= 127 && finished2 == 1) begin
					if(k2==20) begin
							decrypted[j2] = out2;
							j2 = j2 + 1;	
						end
					else
				k2=k2+1;	
					end
					if(j2 == 128) begin
							chipencrypt = 1;
							chipdecrypt = 1;
							finaldecrypted = decrypted;	
						end
				
			end
		end
	end
	end
	
	
endmodule