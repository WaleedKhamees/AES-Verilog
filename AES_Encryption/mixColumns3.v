module time2 (
input [7:0] in,
output [7:0] out
);
assign out = in[7]? (( in << 1) ^ 'h1b) : ( in << 1);  
endmodule 




module multiply(
input [7:0] inArr, 
input [7:0] mat, 
output [7:0] outArr
); 
wire [7:0] res; 
time2 t (inArr, res);

assign outArr = (mat == 'h03 )? res ^ inArr :
					 (mat == 'h02 )? res:
					 inArr;
endmodule 


module multiplyByMat 
(
input [31:0]col,
input [7:0] r1,
input [7:0] r2,
input [7:0] r3,
input [7:0] r4,
output[7:0] s
);
wire [7:0] m1;
wire [7:0] m2;
wire [7:0] m3;
wire [7:0] m4;
multiply ma(col[31:24],r1,m1);
multiply mb(col[23:16],r2,m2);
multiply mc(col[15:8],r3,m3);
multiply md(col[7:0],r4,m4);

assign s=m1^m2^m3^m4;

endmodule 


module mixColumns3 (
input [127:0] inArr, 
output wire [127:0] outArr
);
multiplyByMat c11(inArr[127:96],8'h02,8'h03,8'h01,8'h01,outArr[127:120]);
multiplyByMat c12(inArr[127:96],8'h01,8'h02,8'h03,8'h01,outArr[119:112]);
multiplyByMat c13(inArr[127:96],8'h01,8'h01,8'h02,8'h03,outArr[111:104]);
multiplyByMat c14(inArr[127:96],8'h03,8'h01,8'h01,8'h02,outArr[103:96]);

multiplyByMat c21(inArr[95:64],8'h02,8'h03,8'h01,8'h01, outArr[95:88]);
multiplyByMat c22(inArr[95:64],8'h01,8'h02,8'h03,8'h01, outArr[87:80]);
multiplyByMat c23(inArr[95:64],8'h01,8'h01,8'h02,8'h03, outArr[79:72]);
multiplyByMat c24(inArr[95:64],8'h03,8'h01,8'h01,8'h02, outArr[71:64]);

multiplyByMat c31(inArr[63:32],8'h02,8'h03,8'h01,8'h01, outArr[63:56]);
multiplyByMat c32(inArr[63:32],8'h01,8'h02,8'h03,8'h01, outArr[55:48]);
multiplyByMat c33(inArr[63:32],8'h01,8'h01,8'h02,8'h03, outArr[47:40]);
multiplyByMat c34(inArr[63:32],8'h03,8'h01,8'h01,8'h02, outArr[39:32]);

multiplyByMat c41(inArr[31:0],8'h02,8'h03,8'h01,8'h01,  outArr[31:24]);
multiplyByMat c42(inArr[31:0],8'h01,8'h02,8'h03,8'h01,  outArr[23:16]);
multiplyByMat c43(inArr[31:0],8'h01,8'h01,8'h02,8'h03,  outArr[15:8]);
multiplyByMat c44(inArr[31:0],8'h03,8'h01,8'h01,8'h02,  outArr[7:0]);

endmodule 

