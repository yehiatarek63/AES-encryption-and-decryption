module SpiAes #(parameter N = 128)(
input in,
input clk,
input enable,
input reset,
input chip,
output reg out
);


integer i= -1;
integer j = -1;
integer k=0;
integer finished2=0;
integer finished = 0;
reg[127+N:0] data;
wire [127:0]encrypted;
reg start=0;




AESencryption#(N) encryptor(
.plaintext(data[127:0]),
.key(data[127+N:128]),
.cyphertext(encrypted),
.clk(clk),
.enable(start)
);

always @ (posedge clk or posedge reset)
begin
if(reset)
begin
i = -1;
finished = 0;
finished2=0;
k=0;
start=0;
end
else
begin
if(enable)
begin
	if(!chip && finished == 0)
	begin
		data[i]=in;
		i = i + 1;
		if(i==128+N)
		begin
			finished = 1;
		end
	end
	if(finished&&!chip&&finished2==0) begin 
	   start=1;
		if(k<20) 
		k=k+1;
		else
		finished2=1;
	end
end
end
end



always@(negedge clk or posedge reset)
begin
if(reset)
begin
j = -1;
end
else
begin
if(enable)
begin
	begin
	if(!chip && finished2 == 1)
		begin
			j = j + 1;	
			out = encrypted[j];
				
		end
	
	end
	end
end
end


endmodule