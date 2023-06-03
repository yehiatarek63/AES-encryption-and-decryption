module Inverse_S_box(statebyte, outputbyte);
input statebyte;
wire[7:0] statebyte;
output outputbyte;
reg[7:0] outputbyte;

always@*
	begin
		if(statebyte == 8'h00)
			outputbyte = 8'h52;
			
		else if(statebyte == 8'h01)
			outputbyte = 8'h09;
			
		else if(statebyte == 8'h02)
			outputbyte = 8'h6a;
			
		else if(statebyte == 8'h03)
			outputbyte = 8'hd5;
			
		else if(statebyte == 8'h04)
			outputbyte = 8'h30;
			
		else if(statebyte == 8'h05)
			outputbyte = 8'h36;
			
		else if(statebyte == 8'h06)
			outputbyte = 8'ha5;
			
		else if(statebyte == 8'h07)
			outputbyte = 8'h38;
			
		else if(statebyte == 8'h08)
			outputbyte = 8'hbf;
			
		else if(statebyte == 8'h09)
			outputbyte = 8'h40;
			
		else if(statebyte == 8'h0a)
			outputbyte = 8'ha3;
		else if(statebyte == 8'h0b)
			outputbyte = 8'h9e;
		else if(statebyte == 8'h0c)
			outputbyte = 8'h81;
		else if(statebyte == 8'h0d)
			outputbyte = 8'hf3;
		else if(statebyte == 8'h0e)
			outputbyte = 8'hd7;
		else if(statebyte == 8'h0f)
			outputbyte = 8'hfb;
		else if(statebyte == 8'h10)
			outputbyte = 8'h7c;
		else if(statebyte == 8'h11)
			outputbyte = 8'he3;
		else if(statebyte == 8'h12)
			outputbyte = 8'h39;
		else if(statebyte == 8'h13)
			outputbyte = 8'h82;
		else if(statebyte == 8'h14)
			outputbyte = 8'h9b;
		else if(statebyte == 8'h15)
			outputbyte = 8'h2f;
		else if(statebyte == 8'h16)
			outputbyte = 8'hff;
		else if(statebyte == 8'h17)
			outputbyte = 8'h87;
		else if(statebyte == 8'h18)
			outputbyte = 8'h34;
		else if(statebyte == 8'h19)
			outputbyte = 8'h8e;
		else if(statebyte == 8'h1a)
			outputbyte = 8'h43;
		else if(statebyte == 8'h1b)
			outputbyte = 8'h44;
		else if(statebyte == 8'h1c)
			outputbyte = 8'hc4;
		else if(statebyte == 8'h1d)
			outputbyte = 8'hde;
		else if(statebyte == 8'h1e)
			outputbyte = 8'he9;
		else if(statebyte == 8'h1f)
			outputbyte = 8'hcb;
		else if(statebyte == 8'h20)
			outputbyte = 8'h54;
		else if(statebyte == 8'h21)
			outputbyte = 8'h7b;
		else if(statebyte == 8'h22)
			outputbyte = 8'h94;
		else if(statebyte == 8'h23)
			outputbyte = 8'h32;
		else if(statebyte == 8'h24)
			outputbyte = 8'ha6;
		else if(statebyte == 8'h25)
			outputbyte = 8'hc2;
		else if(statebyte == 8'h26)
			outputbyte = 8'h23;
		else if(statebyte == 8'h27)
			outputbyte = 8'h3d;
		else if(statebyte == 8'h28)
			outputbyte = 8'hee;
		else if(statebyte == 8'h29)
			outputbyte = 8'h4c;
		else if(statebyte == 8'h2a)
			outputbyte = 8'h95;
		else if(statebyte == 8'h2b)
			outputbyte = 8'h0b;
		else if(statebyte == 8'h2c)
			outputbyte = 8'h42;
		else if(statebyte == 8'h2d)
			outputbyte = 8'hfa;
		else if(statebyte == 8'h2e)
			outputbyte = 8'hc3;
		else if(statebyte == 8'h2f)
			outputbyte = 8'h4e;
		else if(statebyte == 8'h30)
			outputbyte = 8'h08;
		else if(statebyte == 8'h31)
			outputbyte = 8'h2e;
		else if(statebyte == 8'h32)
			outputbyte = 8'ha1;
		else if(statebyte == 8'h33)
			outputbyte = 8'h66;
		else if(statebyte == 8'h34)
			outputbyte = 8'h28;
		else if(statebyte == 8'h35)
			outputbyte = 8'hd9;
		else if(statebyte == 8'h36)
			outputbyte = 8'h24;
		else if(statebyte == 8'h37)
			outputbyte = 8'hb2;
		else if(statebyte == 8'h38)
			outputbyte = 8'h76;
		else if(statebyte == 8'h39)
			outputbyte = 8'h5b;
		else if(statebyte == 8'h3a)
			outputbyte = 8'ha2;
		else if(statebyte == 8'h3b)
			outputbyte = 8'h49;
		else if(statebyte == 8'h3c)
			outputbyte = 8'h6d;
		else if(statebyte == 8'h3d)
			outputbyte = 8'h8b;
		else if(statebyte == 8'h3e)
			outputbyte = 8'hd1;
		else if(statebyte == 8'h3f)
			outputbyte = 8'h25;
		else if(statebyte == 8'h40)
			outputbyte = 8'h72;
		else if(statebyte == 8'h41)
			outputbyte = 8'hf8;
		else if(statebyte == 8'h42)
			outputbyte = 8'hf6;
		else if(statebyte == 8'h43)
			outputbyte = 8'h64;
		else if(statebyte == 8'h44)
			outputbyte = 8'h86;
		else if(statebyte == 8'h45)
			outputbyte = 8'h68;
		else if(statebyte == 8'h46)
			outputbyte = 8'h98;
		else if(statebyte == 8'h47)
			outputbyte = 8'h16;
		else if(statebyte == 8'h48)
			outputbyte = 8'hd4;
		else if(statebyte == 8'h49)
			outputbyte = 8'ha4;
		else if(statebyte == 8'h4a)
			outputbyte = 8'h5c;
		else if(statebyte == 8'h4b)
			outputbyte = 8'hcc;
		else if(statebyte == 8'h4c)
			outputbyte = 8'h5d;
		else if(statebyte == 8'h4d)
			outputbyte = 8'h65;
		else if(statebyte == 8'h4e)
			outputbyte = 8'hb6;
		else if(statebyte == 8'h4f)
			outputbyte = 8'h92;
		else if(statebyte == 8'h50)
			outputbyte = 8'h6c;
		else if(statebyte == 8'h51)
			outputbyte = 8'h70;
		else if(statebyte == 8'h52)
			outputbyte = 8'h48;
		else if(statebyte == 8'h53)
			outputbyte = 8'h50;
		else if(statebyte == 8'h54)
			outputbyte = 8'hfd;
		else if(statebyte == 8'h55)
			outputbyte = 8'hed;
		else if(statebyte == 8'h56)
			outputbyte = 8'hb9;
		else if(statebyte == 8'h57)
			outputbyte = 8'hda;
		else if(statebyte == 8'h58)
			outputbyte = 8'h5e;
		else if(statebyte == 8'h59)
			outputbyte = 8'h15;
		else if(statebyte == 8'h5a)
			outputbyte = 8'h46;
		else if(statebyte == 8'h5b)
			outputbyte = 8'h57;
		else if(statebyte == 8'h5c)
			outputbyte = 8'ha7;
		else if(statebyte == 8'h5d)
			outputbyte = 8'h8d;
		else if(statebyte == 8'h5e)
			outputbyte = 8'h9d;
		else if(statebyte == 8'h5f)
			outputbyte = 8'h84;
		else if(statebyte == 8'h60)
			outputbyte = 8'h90;
		else if(statebyte == 8'h61)
			outputbyte = 8'hd8;
		else if(statebyte == 8'h62)
			outputbyte = 8'hab;
		else if(statebyte == 8'h63)
			outputbyte = 8'h00;
		else if(statebyte == 8'h64)
			outputbyte = 8'h8c;
		else if(statebyte == 8'h65)
			outputbyte = 8'hbc;
		else if(statebyte == 8'h66)
			outputbyte = 8'hd3;
		else if(statebyte == 8'h67)
			outputbyte = 8'h0a;
		else if(statebyte == 8'h68)
			outputbyte = 8'hf7;
		else if(statebyte == 8'h69)
			outputbyte = 8'he4;
		else if(statebyte == 8'h6a)
			outputbyte = 8'h58;
		else if(statebyte == 8'h6b)
			outputbyte = 8'h05;
		else if(statebyte == 8'h6c)
			outputbyte = 8'hb8;
		else if(statebyte == 8'h6d)
			outputbyte = 8'hb3;
		else if(statebyte == 8'h6e)
			outputbyte = 8'h45;
		else if(statebyte == 8'h6f)
			outputbyte = 8'h06;
		else if(statebyte == 8'h70)
			outputbyte = 8'hd0;
		else if(statebyte == 8'h71)
			outputbyte = 8'h2c;
		else if(statebyte == 8'h72)
			outputbyte = 8'h1e;
		else if(statebyte == 8'h73)
			outputbyte = 8'h8f;
		else if(statebyte == 8'h74)
			outputbyte = 8'hca;
		else if(statebyte == 8'h75)
			outputbyte = 8'h3f;
		else if(statebyte == 8'h76)
			outputbyte = 8'h0f;
		else if(statebyte == 8'h77)
			outputbyte = 8'h02;
		else if(statebyte == 8'h78)
			outputbyte = 8'hc1;
		else if(statebyte == 8'h79)
			outputbyte = 8'haf;
		else if(statebyte == 8'h7a)
			outputbyte = 8'hbd;
		else if(statebyte == 8'h7b)
			outputbyte = 8'h03;
		else if(statebyte == 8'h7c)
			outputbyte = 8'h01;
		else if(statebyte == 8'h7d)
			outputbyte = 8'h13;
		else if(statebyte == 8'h7e)
			outputbyte = 8'h8a;
		else if(statebyte == 8'h7f)
			outputbyte = 8'h6b;
		else if(statebyte == 8'h80)
			outputbyte = 8'h3a;
		else if(statebyte == 8'h81)
			outputbyte = 8'h91;
		else if(statebyte == 8'h82)
			outputbyte = 8'h11;
		else if(statebyte == 8'h83)
			outputbyte = 8'h41;
		else if(statebyte == 8'h84)
			outputbyte = 8'h4f;
		else if(statebyte == 8'h85)
			outputbyte = 8'h67;
		else if(statebyte == 8'h86)
			outputbyte = 8'hdc;
		else if(statebyte == 8'h87)
			outputbyte = 8'hea;
		else if(statebyte == 8'h88)
			outputbyte = 8'h97;
		else if(statebyte == 8'h89)
			outputbyte = 8'hf2;
		else if(statebyte == 8'h8a)
			outputbyte = 8'hcf;
		else if(statebyte == 8'h8b)
			outputbyte = 8'hce;
		else if(statebyte == 8'h8c)
			outputbyte = 8'hf0;
		else if(statebyte == 8'h8d)
			outputbyte = 8'hb4;
		else if(statebyte == 8'h8e)
			outputbyte = 8'he6;
		else if(statebyte == 8'h8f)
			outputbyte = 8'h73;
		else if(statebyte == 8'h90)
			outputbyte = 8'h96;
		else if(statebyte == 8'h91)
			outputbyte = 8'hac;
		else if(statebyte == 8'h92)
			outputbyte = 8'h74;
		else if(statebyte == 8'h93)
			outputbyte = 8'h22;
		else if(statebyte == 8'h94)
			outputbyte = 8'he7;
		else if(statebyte == 8'h95)
			outputbyte = 8'had;
		else if(statebyte == 8'h96)
			outputbyte = 8'h35;
		else if(statebyte == 8'h97)
			outputbyte = 8'h85;
		else if(statebyte == 8'h98)
			outputbyte = 8'he2;
		else if(statebyte == 8'h99)
			outputbyte = 8'hf9;
		else if(statebyte == 8'h9a)
			outputbyte = 8'h37;
		else if(statebyte == 8'h9b)
			outputbyte = 8'he8;
		else if(statebyte == 8'h9c)
			outputbyte = 8'h1c;
		else if(statebyte == 8'h9d)
			outputbyte = 8'h75;
		else if(statebyte == 8'h9e)
			outputbyte = 8'hdf;
		else if(statebyte == 8'h9f)
			outputbyte = 8'h6e;
		else if(statebyte == 8'ha0)
			outputbyte = 8'h47;
		else if(statebyte == 8'ha1)
			outputbyte = 8'hf1;
		else if(statebyte == 8'ha2)
			outputbyte = 8'h1a;
		else if(statebyte == 8'ha3)
			outputbyte = 8'h71;
		else if(statebyte == 8'ha4)
			outputbyte = 8'h1d;
		else if(statebyte == 8'ha5)
			outputbyte = 8'h29;
		else if(statebyte == 8'ha6)
			outputbyte = 8'hc5;
		else if(statebyte == 8'ha7)
			outputbyte = 8'h89;
		else if(statebyte == 8'ha8)
			outputbyte = 8'h6f;
		else if(statebyte == 8'ha9)
			outputbyte = 8'hb7;
		else if(statebyte == 8'haa)
			outputbyte = 8'h62;
		else if(statebyte == 8'hab)
			outputbyte = 8'h0e;
		else if(statebyte == 8'hac)
			outputbyte = 8'haa;
		else if(statebyte == 8'had)
			outputbyte = 8'h18;
		else if(statebyte == 8'hae)
			outputbyte = 8'hbe;
		else if(statebyte == 8'haf)
			outputbyte = 8'h1b;
		else if(statebyte == 8'hb0)
			outputbyte = 8'hfc;
		else if(statebyte == 8'hb1)
			outputbyte = 8'h56;
		else if(statebyte == 8'hb2)
			outputbyte = 8'h3e;
		else if(statebyte == 8'hb3)
			outputbyte = 8'h4b;
		else if(statebyte == 8'hb4)
			outputbyte = 8'hc6;
		else if(statebyte == 8'hb5)
			outputbyte = 8'hd2;
		else if(statebyte == 8'hb6)
			outputbyte = 8'h79;
		else if(statebyte == 8'hb7)
			outputbyte = 8'h20;
		else if(statebyte == 8'hb8)
			outputbyte = 8'h9a;
		else if(statebyte == 8'hb9)
			outputbyte = 8'hdb;
		else if(statebyte == 8'hba)
			outputbyte = 8'hc0;
		else if(statebyte == 8'hbb)
			outputbyte = 8'hfe;
		else if(statebyte == 8'hbc)
			outputbyte = 8'h78;
		else if(statebyte == 8'hbd)
			outputbyte = 8'hcd;
		else if(statebyte == 8'hbe)
			outputbyte = 8'h5a;
		else if(statebyte == 8'hbf)
			outputbyte = 8'hf4;
		else if(statebyte == 8'hc0)
			outputbyte = 8'h1f;
		else if(statebyte == 8'hc1)
			outputbyte = 8'hdd;
		else if(statebyte == 8'hc2)
			outputbyte = 8'ha8;
		else if(statebyte == 8'hc3)
			outputbyte = 8'h33;
		else if(statebyte == 8'hc4)
			outputbyte = 8'h88;
		else if(statebyte == 8'hc5)
			outputbyte = 8'h07;
		else if(statebyte == 8'hc6)
			outputbyte = 8'hc7;
		else if(statebyte == 8'hc7)
			outputbyte = 8'h31;
		else if(statebyte == 8'hc8)
			outputbyte = 8'hb1;
		else if(statebyte == 8'hc9)
			outputbyte = 8'h12;
		else if(statebyte == 8'hca)
			outputbyte = 8'h10;
		else if(statebyte == 8'hcb)
			outputbyte = 8'h59;
		else if(statebyte == 8'hcc)
			outputbyte = 8'h27;
		else if(statebyte == 8'hcd)
			outputbyte = 8'h80;
		else if(statebyte == 8'hce)
			outputbyte = 8'hec;
		else if(statebyte == 8'hcf)
			outputbyte = 8'h5f;
		else if(statebyte == 8'hd0)
			outputbyte = 8'h60;
		else if(statebyte == 8'hd1)
			outputbyte = 8'h51;
		else if(statebyte == 8'hd2)
			outputbyte = 8'h7f;
		else if(statebyte == 8'hd3)
			outputbyte = 8'ha9;
		else if(statebyte == 8'hd4)
			outputbyte = 8'h19;
		else if(statebyte == 8'hd5)
			outputbyte = 8'hb5;
		else if(statebyte == 8'hd6)
			outputbyte = 8'h4a;
		else if(statebyte == 8'hd7)
			outputbyte = 8'h0d;
		else if(statebyte == 8'hd8)
			outputbyte = 8'h2d;
		else if(statebyte == 8'hd9)
			outputbyte = 8'he5;
		else if(statebyte == 8'hda)
			outputbyte = 8'h7a;
		else if(statebyte == 8'hdb)
			outputbyte = 8'h9f;
		else if(statebyte == 8'hdc)
			outputbyte = 8'h93;
		else if(statebyte == 8'hdd)
			outputbyte = 8'hc9;
		else if(statebyte == 8'hde)
			outputbyte = 8'h9c;
		else if(statebyte == 8'hdf)
			outputbyte = 8'hef;
		else if(statebyte == 8'he0)
			outputbyte = 8'ha0;
		else if(statebyte == 8'he1)
			outputbyte = 8'he0;
		else if(statebyte == 8'he2)
			outputbyte = 8'h3b;
		else if(statebyte == 8'he3)
			outputbyte = 8'h4d;
		else if(statebyte == 8'he4)
			outputbyte = 8'hae;
		else if(statebyte == 8'he5)
			outputbyte = 8'h2a;
		else if(statebyte == 8'he6)
			outputbyte = 8'hf5;
		else if(statebyte == 8'he7)
			outputbyte = 8'hb0;
		else if(statebyte == 8'he8)
			outputbyte = 8'hc8;
		else if(statebyte == 8'he9)
			outputbyte = 8'heb;
		else if(statebyte == 8'hea)
			outputbyte = 8'hbb;
		else if(statebyte == 8'heb)
			outputbyte = 8'h3c;
		else if(statebyte == 8'hec)
			outputbyte = 8'h83;
		else if(statebyte == 8'hed)
			outputbyte = 8'h53;
		else if(statebyte == 8'hee)
			outputbyte = 8'h99;
		else if(statebyte == 8'hef)
			outputbyte = 8'h61;
		else if(statebyte == 8'hf0)
			outputbyte = 8'h17;
		else if(statebyte == 8'hf1)
			outputbyte = 8'h2b;
		else if(statebyte == 8'hf2)
			outputbyte = 8'h04;
		else if(statebyte == 8'hf3)
			outputbyte = 8'h7e;
		else if(statebyte == 8'hf4)
			outputbyte = 8'hba;
		else if(statebyte == 8'hf5)
			outputbyte = 8'h77;
		else if(statebyte == 8'hf6)
			outputbyte = 8'hd6;
		else if(statebyte == 8'hf7)
			outputbyte = 8'h26;
		else if(statebyte == 8'hf8)
			outputbyte = 8'he1;
		else if(statebyte == 8'hf9)
			outputbyte = 8'h69;
		else if(statebyte == 8'hfa)
			outputbyte = 8'h14;
		else if(statebyte == 8'hfb)
			outputbyte = 8'h63;
		else if(statebyte == 8'hfc)
			outputbyte = 8'h55;
		else if(statebyte == 8'hfd)
			outputbyte = 8'h21;
		else if(statebyte == 8'hfe)
			outputbyte = 8'h0c;
		else
			outputbyte = 8'h7d;	
	end
	
	
endmodule
	