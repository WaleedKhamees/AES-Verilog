module InvShiftRows(
stateIn,
stateOut
);

input wire[127:0] stateIn;
output wire[127:0] stateOut;


//Shifting stateIn [0]
assign stateOut [127:120] = stateIn [127:120];
assign stateOut [95:88] = stateIn [95:88];
assign stateOut [63:56] = stateIn [63:56];
assign stateOut [31:24] = stateIn [31:24];

//Shifting stateIn [1]
assign stateOut [119:112] = stateIn [23:16];
assign stateOut [87:80] = stateIn [119:112];
assign stateOut [55:48] = stateIn [87:80];
assign stateOut [23:16] = stateIn [55:48];

//Shifting stateIn [2]
assign stateOut [111:104] = stateIn [47:40];
assign stateOut [79:72] =stateIn [15:8];
assign stateOut [47:40] = stateIn [111:104];
assign stateOut [15:8] = stateIn [79:72];

//Shifting stateIn [3]
assign stateOut [103:96] = stateIn [71:64];
assign stateOut [71:64] = stateIn [39:32];
assign stateOut [39:32] = stateIn [7:0];
assign stateOut [7:0] = stateIn [103:96];

endmodule







/*
input wire stateIn [16];
output wire  stateOut [16];
*/


//reg temp = 2'h00;


/*for(i = 1; i < 4; i++){
    for(j = i; j > 0; j--){*/
/* 
assign temp = stateOut [] [0];

assign stateOut [i] [0] = stateOut [i] [1];
assign stateOut [i] [1] = stateOut [i] [2];
assign stateOut [i] [2] = stateOut [i] [3];
assign stateOut [i] [3] = temp;
*/
/*    }
	 
}

assign stateOut [0] [0] = 1;
*/

//Shifing stateOut [1]
/*
assign temp = stateOutIn [1] [0];
assign stateOutOut [1] [0] = stateIn [1] [1];
assign stateOut [1]: [1] = stateIn [1] [2];
assign stateOut [1] [2] = stateIn [1] [3];
assign stateOut [1] [3] = temp;


//shifting stateOut[2]
assign temp = stateOut [2] [0];
assign stateOut [2] [0] = stateIn [2] [1];
assign stateOut [2] [1] = stateIn [2] [2];
assign stateOut [2] [2] = stateIn [2] [3];
assign stateOut [2] [3] = temp;

assign temp = stateOut [2] [0];
assign stateOut [2] [0] = stateIn [2] [1];
assign stateOut [2] [1] = stateIn [2] [2];
assign stateOut [2] [2] = stateIn [2] [3];
assign stateOut [2] [3] = temp;

//Shifting stateOut [3]
assign temp = stateOut [3] [0];
assign stateOut [3] [0] = stateOut [3] [1];
assign stateOut [3] [1] = stateOut [3] [2];
assign stateOut [3] [2] = stateOut [3] [3];
assign stateOut [3] [3] = temp;

assign temp = stateOut [3] [0];
assign stateOut [3] [0] = stateOut [3] [1];
assign stateOut [3] [1] = stateOut [3] [2];
assign stateOut [3] [2] = stateOut [3] [3];
assign stateOut [3] [3] = temp;

assign temp = stateOut [3] [0];
assign stateOut [3] [0] = stateOut [3] [1];
assign stateOut [3] [1] = stateOut [3] [2];
assign stateOut [3] [2] = stateOut [3] [3];
assign stateOut [3] [3] = temp;

*/

//Shifting stateIn [0]
/*
assign stateOut [0] [0] = stateIn [0] [0];
assign stateOut [0] [1] = stateIn [0] [1];
assign stateOut [0] [2] = stateIn [0] [2];
assign stateOut [0] [3] = stateIn [0] [3];

/*
//Shifting stateIn [1]
assign stateOut [1] [0] = stateIn [1] [1];
assign stateOut [1] [1] = stateIn [1] [2];
assign stateOut [1] [2] = stateIn [1] [3];
assign stateOut [1] [3] = stateIn [1] [0];


//Shifting state [2]
assign stateOut [2] [0] = stateIn [2] [2];
assign stateOut [2] [1] = stateIn [2] [3];
assign stateOut [2] [2] = stateIn [2] [0];
assign stateOut [2] [3] = stateIn [2] [1];


//Shifting state [3]
assign stateOut [3] [0] = stateIn [3] [3];
assign stateOut [3] [1] = stateIn [3] [0];
assign stateOut [3] [2] = stateIn [3] [1];
assign stateOut [3] [3] = stateIn [3] [2];
*/
