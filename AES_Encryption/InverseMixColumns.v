module m2 (
input [7:0] in, 
output [7:0] out
); 
assign out = in[7]? ((in << 1) ^ 'h1b) : (in << 1); 
endmodule 

module m4 (
input [7:0] in,
output [7:0] out
); 
wire [7:0]temp; 
m2 a (in, temp);
assign out = temp[7]? ((temp << 1) ^ 'h1b) : (temp << 1); 
endmodule 

module m8 (
input [7:0] in,
output [7:0] out
); 
wire [7:0]temp; 
m4 a (in, temp);
assign out = temp[7]? ((temp << 1) ^ 'h1b) : (temp << 1); 
endmodule 


module m9 (
input [7:0] in, 
output [7:0] out
); 
wire [7:0] a8; 
m8 res0 (in, a8); 
assign out = a8 ^ in; 
endmodule 

module m11 (
input [7:0] in, 
output [7:0] out
); 
wire [7:0] a8;
wire [7:0] a2;   
m8 res0 (in, a8);
m2 res1 (in, a2);  
assign out = a8 ^ a2 ^ in; 
endmodule 

module m13 (
input [7:0] in, 
output [7:0] out
); 
wire [7:0] a8;
wire [7:0] a4; 
m8 res0 (in, a8);
m4 res1 (in, a4);  
assign out = a8 ^ a4 ^ in; 
endmodule

module m14 (
input [7:0] in, 
output [7:0] out
); 
wire [7:0] a8;
wire [7:0] a4;
wire [7:0] a2; 
m8 res0 (in, a8);
m4 res1 (in, a4);  
m2 res2 (in, a2); 
assign out = a8 ^ a4 ^ a2; 
endmodule


module multiply1(
input [7:0] ele, 
input [7:0] mat,
output [7:0] out
);
wire [7:0]c9,c11,c13,c14;  
m9 case9 (ele,c9); 
m11 case11 (ele,c11); 
m13 case13 (ele,c13); 
m14 case14 (ele,c14); 

assign out = (mat == 'h09)? c9 :
				 (mat == 'h0b)? c11:
				 (mat == 'h0d)? c13:
				 c14;
endmodule 

module multiplyColByRow (
input [31:0] in, 
input [7:0] r0, 
input [7:0] r1, 
input [7:0] r2, 
input [7:0] r3, 
output [7:0] out
);
wire [7:0]res0, res1, res2, res3; 
multiply1 m0 (in[31:24], r0,res0);
multiply1 m1 (in[23:16], r1,res1);
multiply1 m2 (in[15:08], r2,res2);
multiply1 m3 (in[07:00], r3,res3);
assign out = res0 ^ res1 ^ res2 ^ res3; 
endmodule 

module inverseMixColumn (
input [127:0] in, 
output [127:0] out
);
multiplyColByRow e00 (in[127:096], 8'h0e, 8'h0b, 8'h0d, 8'h09, out[127:120]); 
multiplyColByRow e01 (in[127:096], 8'h09, 8'h0e, 8'h0b, 8'h0d, out[119:112]); 
multiplyColByRow e02 (in[127:096], 8'h0d, 8'h09, 8'h0e, 8'h0b, out[111:104]); 
multiplyColByRow e03 (in[127:096], 8'h0b, 8'h0d, 8'h09, 8'h0e, out[103:096]); 

multiplyColByRow e10 (in[095:064], 8'h0e, 8'h0b, 8'h0d, 8'h09, out[095:088]); 
multiplyColByRow e11 (in[095:064], 8'h09, 8'h0e, 8'h0b, 8'h0d, out[087:080]); 
multiplyColByRow e12 (in[095:064], 8'h0d, 8'h09, 8'h0e, 8'h0b, out[079:072]); 
multiplyColByRow e13 (in[095:064], 8'h0b, 8'h0d, 8'h09, 8'h0e, out[071:064]); 

multiplyColByRow e20 (in[063:032], 8'h0e, 8'h0b, 8'h0d, 8'h09, out[063:056]); 
multiplyColByRow e21 (in[063:032], 8'h09, 8'h0e, 8'h0b, 8'h0d, out[055:048]); 
multiplyColByRow e22 (in[063:032], 8'h0d, 8'h09, 8'h0e, 8'h0b, out[047:040]); 
multiplyColByRow e23 (in[063:032], 8'h0b, 8'h0d, 8'h09, 8'h0e, out[039:032]); 

multiplyColByRow e30 (in[031:000], 8'h0e, 8'h0b, 8'h0d, 8'h09, out[031:024]); 
multiplyColByRow e31 (in[031:000], 8'h09, 8'h0e, 8'h0b, 8'h0d, out[023:016]); 
multiplyColByRow e32 (in[031:000], 8'h0d, 8'h09, 8'h0e, 8'h0b, out[015:008]); 
multiplyColByRow e33 (in[031:000], 8'h0b, 8'h0d, 8'h09, 8'h0e, out[007:000]); 

endmodule 


module test (); 
wire [127:0]inArr; 
wire [127:0] outArr; 
assign inArr = 'h1741A118_91C99168_8C36386F_23AD82AA;  
inverseMixColumn imc (inArr, outArr); 




endmodule 

