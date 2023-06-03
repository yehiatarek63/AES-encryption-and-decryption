module Inverse_shiftrows(state, outputstate);
input state;
wire [127:0] state;
output outputstate;
wire [127:0] outputstate;


assign outputstate = {state[127:120], state[23:16], state[47:40], state[71:64], state[95:88], state[119:112], state[15:8], state[39:32], state[63:56], state[87:80], state[111:104], state[7:0], state[31:24], state[55:48], state[79:72], state[103:96]};

endmodule