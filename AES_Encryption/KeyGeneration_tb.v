/*
module KeyGeneration_tb(in,out);

input in;
output out;
reg [127:0] keyIn;
wire [127:0] keyOut;

reg [127:0] inMatrix;
wire [127:0] outMatrix;



KeyGeneration uut (.rc(2) , .key(keyIn) , .keyout(keyOut) );

AddRoundKey uut1 (.Key(keyOut) , .inMatrix(inMatrix) , .outMatrix(outMatrix));
initial
begin

keyIn = 'hf2c295f27a96b9435935807a7359f67f ;
inMatrix = 'h9151ABE1E5541CFD014A713EDA7E3134; 

#20;
$display("outMatrix:\n%h \n", outMatrix[127:0]);
$display("keyOut:\n%h \n", keyOut[127:0]);


#20;

end





endmodule
*/

/*

module test;

reg[127:0] keyin;
wire [1407:0] keyout;

KeyGeneration_128 uut (.keyin(keyin),.keyout(keyout));


initial 
begin


keyin = 'h2B7E151628AED2A6ABF7158809CF4F3C; 


$display("keyOut:\n%h \n", keyOut[1407:0]);



end



endmodule
*/