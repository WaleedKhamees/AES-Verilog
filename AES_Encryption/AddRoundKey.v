module AddRoundKey(
Key,
inMatrix,
outMatrix
);


input  [127 : 0] Key;
input  [127 : 0] inMatrix;
output [127 : 0] outMatrix;

assign outMatrix = inMatrix ^ Key;
/*
integer k = 0;
always @(*)
begin
if(k == 1)
begin
k = k + 1;
$display("Key: %h \n\ninMatrix: %h\n\noutMatrix: %h\n\n", Key, inMatrix, outMatrix);
end
k = k + 1;
end
*/
endmodule

