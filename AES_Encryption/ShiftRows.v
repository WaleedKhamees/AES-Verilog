module ShiftRows(
stateIn,
stateOut
);

input wire[127:0] stateIn;
output wire[127:0] stateOut;



assign stateOut [127:120] = stateIn [127:120];
assign stateOut [95:88] = stateIn [95:88];
assign stateOut [63:56] = stateIn [63:56];
assign stateOut [31:24] = stateIn [31:24];

assign stateOut [119:112] = stateIn [87:80];
assign stateOut [87:80] = stateIn [55:48];
assign stateOut [55:48] = stateIn [23:16];
assign stateOut [23:16] = stateIn [119:112];

assign stateOut [111:104] = stateIn [47:40];
assign stateOut [79:72] =stateIn [15:8];
assign stateOut [47:40] = stateIn [111:104];
assign stateOut [15:8] = stateIn [79:72];

assign stateOut [103:96] = stateIn [7:0];
assign stateOut [71:64] = stateIn [103:96];
assign stateOut [39:32] = stateIn [71:64];
assign stateOut [7:0] = stateIn [39:32];

endmodule


