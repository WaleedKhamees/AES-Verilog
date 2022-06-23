module Cipher ( word,Key,nk,wordout);

input [127:0] word;
input [255:0] Key;
input[3:0] nk;
output [127:0] wordout;

wire [2047:0] Keyout1;
wire [2047:0] Keyout2;
wire [2047:0] Keyout3;

wire [2047:0] Keyout;

wire [127:0] out1;
wire [127:0] out2;
wire [127:0] out3;
wire [127:0] out4;
wire [127:0] out5;
wire [127:0] out6;
wire [127:0] out7;
wire [127:0] out8;
wire [127:0] out9;
wire [127:0] out10;
wire [127:0] out11;
wire [127:0] out12;
wire [127:0] out13;
wire [127:0] out14;
wire [127:0] out15;
wire [127:0] out16;
wire [127:0] out17;
wire [127:0] out18;
wire [127:0] out19;
wire [127:0] out20;
wire [127:0] out21;
wire [127:0] out22;
wire [127:0] out23;
wire [127:0] out24;
wire [127:0] out25;
wire [127:0] out26;
wire [127:0] out27;
wire [127:0] out28;
wire [127:0] out29;
wire [127:0] out30;
wire [127:0] out31;
wire [127:0] out32;
wire [127:0] out33;
wire [127:0] out34;
wire [127:0] out35;
wire [127:0] out36;
wire [127:0] out37;
wire [127:0] out38;
wire [127:0] out39;
wire [127:0] out40;
wire [127:0] out41;
wire [127:0] out42;
wire [127:0] out43;
wire [127:0] out44;
wire [127:0] out45;
wire [127:0] out46;
wire [127:0] out47;
wire [127:0] out48;
wire [127:0] out49;
wire [127:0] out50;
wire [127:0] out51;
wire [127:0] out52;
wire [127:0] out53;
wire [127:0] out54;
wire [127:0] out55;
wire [127:0] out56;
wire [127:0] out57;
wire [127:0] out58;
wire [127:0] out59;



wire [127:0] out128;
wire [127:0] out192;
wire [127:0] out256;



/*
assign Key[127:0] = ( nk == 4 ) ? 128'b0;  
assign Key[63:0] = ( nk == 6 ) ? 64'b0;  
*/

KeyGeneration_128 gen1(.Keyin(Key),.Keyout(Keyout1));
KeyGeneration_192 gen2(.Keyin(Key),.Keyout(Keyout2));
KeyGeneration_256 gen3(.Keyin(Key),.Keyout(Keyout3));



assign Keyout = (nk==4) ? Keyout1:
                (nk==6) ? Keyout2:Keyout3;


AddRoundKey add0 ( .Key(Keyout[2047:1920]) , .inMatrix(word) , .outMatrix(out1) );

SubBytes sub1 ( .stateIn(out1) , .stateOut(out2));
ShiftRows sh1 ( .stateIn(out2) , .stateOut(out3));
mixColumns3 mix1 (.inArr(out3) , .outArr(out4));
AddRoundKey add1 ( .Key(Keyout[1919:1792]) , .inMatrix(out4) , .outMatrix(out5) );

SubBytes sub2 ( .stateIn(out5) , .stateOut(out6));
ShiftRows sh2 ( .stateIn(out6) , .stateOut(out7));
mixColumns3 mix2 (.inArr(out7) , .outArr(out8));
AddRoundKey add2 ( .Key(Keyout[1791:1664]) , .inMatrix(out8) , .outMatrix(out9) );

SubBytes sub3 ( .stateIn(out9) , .stateOut(out10));
ShiftRows sh3 ( .stateIn(out10) , .stateOut(out11));
mixColumns3 mix3 (.inArr(out11) , .outArr(out12));
AddRoundKey add3 ( .Key(Keyout[1663:1536]) , .inMatrix(out12) , .outMatrix(out13) );

SubBytes sub4 ( .stateIn(out13) , .stateOut(out14));
ShiftRows sh4 ( .stateIn(out14) , .stateOut(out15));
mixColumns3 mix4 (.inArr(out15) , .outArr(out16));
AddRoundKey add4 ( .Key(Keyout[1535:1408]) , .inMatrix(out16) , .outMatrix(out17) );

SubBytes sub5 ( .stateIn(out17) , .stateOut(out18));
ShiftRows sh5 ( .stateIn(out18) , .stateOut(out19));
mixColumns3 mix5 (.inArr(out19) , .outArr(out20));
AddRoundKey add5 ( .Key(Keyout[1407:1280]) , .inMatrix(out20) , .outMatrix(out21) );

SubBytes sub6 ( .stateIn(out21) , .stateOut(out22));
ShiftRows sh6 ( .stateIn(out22) , .stateOut(out23));
mixColumns3 mix6 (.inArr(out23) , .outArr(out24));
AddRoundKey add6 ( .Key(Keyout[1279:1152]) , .inMatrix(out24) , .outMatrix(out25) );

SubBytes sub7 ( .stateIn(out25) , .stateOut(out26));
ShiftRows sh7 ( .stateIn(out26) , .stateOut(out27));
mixColumns3 mix7 (.inArr(out27) , .outArr(out28));
AddRoundKey add7 ( .Key(Keyout[1151:1024]) , .inMatrix(out28) , .outMatrix(out29) );

SubBytes sub8 ( .stateIn(out29) , .stateOut(out30));
ShiftRows sh8 ( .stateIn(out30) , .stateOut(out31));
mixColumns3 mix8 (.inArr(out31) , .outArr(out32));
AddRoundKey add8 ( .Key(Keyout[1023:896]) , .inMatrix(out32) , .outMatrix(out33) );

SubBytes sub9 ( .stateIn(out33) , .stateOut(out34));
ShiftRows sh9 ( .stateIn(out34) , .stateOut(out35));
mixColumns3 mix9 (.inArr(out35) , .outArr(out36));
AddRoundKey add9 ( .Key(Keyout[895:768]) , .inMatrix(out36) , .outMatrix(out37) );

SubBytes sub128 (.stateIn(out37) , .stateOut(out38));
ShiftRows sh128 ( .stateIn(out38) , .stateOut(out39));
AddRoundKey add128 ( .Key(Keyout[767:640]) , .inMatrix(out39) , .outMatrix(out128) );

///////////////

SubBytes sub10 ( .stateIn(out37) , .stateOut(out40));
ShiftRows sh10 ( .stateIn(out40) , .stateOut(out41));
mixColumns3 mix10 (.inArr(out41) , .outArr(out42));
AddRoundKey add10 ( .Key(Keyout[767:640]) , .inMatrix(out42) , .outMatrix(out43) );

SubBytes sub11 ( .stateIn(out43) , .stateOut(out44));
ShiftRows sh11 ( .stateIn(out44) , .stateOut(out45));
mixColumns3 mix11 (.inArr(out45) , .outArr(out46));
AddRoundKey add11 ( .Key(Keyout[639:512]) , .inMatrix(out46) , .outMatrix(out47) );


SubBytes sub192 (.stateIn(out47) , .stateOut(out48));
ShiftRows sh192 ( .stateIn(out48) , .stateOut(out49));
AddRoundKey add192 ( .Key(Keyout[511:384]) , .inMatrix(out49) , .outMatrix(out192) );


///////////////

SubBytes sub12 ( .stateIn(out47) , .stateOut(out50));
ShiftRows sh12 ( .stateIn(out50) , .stateOut(out51));
mixColumns3 mix12 (.inArr(out51) , .outArr(out52));
AddRoundKey add12 ( .Key(Keyout[511:384]) , .inMatrix(out52) , .outMatrix(out53) );

SubBytes sub13 ( .stateIn(out53) , .stateOut(out54));
ShiftRows sh13 ( .stateIn(out54) , .stateOut(out55));
mixColumns3 mix13 (.inArr(out55) , .outArr(out56));
AddRoundKey add13 ( .Key(Keyout[383:256]) , .inMatrix(out56) , .outMatrix(out57) );

SubBytes sub256 (.stateIn(out57) , .stateOut(out58));
ShiftRows sh256 ( .stateIn(out58) , .stateOut(out59));
AddRoundKey add256 ( .Key(Keyout[255:128]) , .inMatrix(out59) , .outMatrix(out256) );

//////////////////////


assign wordout = ( nk==4 ) ? out128 :
                 ( nk==6 ) ? out192 : out256;
					  
//assign wordout = Keyout[1791:1664];
endmodule








module Cipher_tb;

reg [127:0] word;
reg [3:0] nk;
reg [255:0] key;

wire [127:0] wordout;

Cipher uut ( .word(word) , .key(key) , .nk(nk) , .wordout(wordout));


initial
begin

key = 'h000102030405060708090a0b0c0d0e0f;

word = 'h00112233445566778899aabbccddeeff; 

nk = 6;


#20;
$display("wordout:\n%h \n", wordout[127:0]);

#20;

end


endmodule
