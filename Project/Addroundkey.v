module Addroundkey(state, keystate, outputstate);
input state;
input keystate;
output outputstate;
wire [127:0] state;
wire [127:0] outputstate;
wire [127: 0] keystate;


assign outputstate = state ^ keystate;

endmodule
