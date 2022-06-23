module KeyGeneration_128(Keyin,Keyout);

input[127:0] Keyin;
output [2047:0] Keyout;

assign Keyout[2047:1920] =Keyin;
KeyGeneration uut2 (.rc(0)  ,.key(Keyin) , .keyout(Keyout[1919:1792]));
KeyGeneration uut3 (.rc(1)  ,.key(Keyout[1919:1792]) , .keyout(Keyout[1791:1664]));
KeyGeneration uut4 (.rc(2)  ,.key(Keyout[1791:1664]) , .keyout(Keyout[1663:1536]));
KeyGeneration uut5 (.rc(3)  ,.key(Keyout[1663:1536]) , .keyout(Keyout[1535:1408]));
KeyGeneration uut6 (.rc(4)  ,.key(Keyout[1535:1408]) , .keyout(Keyout[1407:1280]));
KeyGeneration uut7 (.rc(5)  ,.key(Keyout[1407:1280]) , .keyout(Keyout[1279:1152]));
KeyGeneration uut8 (.rc(6)  ,.key(Keyout[1279:1152]) , .keyout(Keyout[1151:1024]));
KeyGeneration uut9 (.rc(7)  ,.key(Keyout[1151:1024]) , .keyout(Keyout[1023:896]));
KeyGeneration uut10 (.rc(8) ,.key(Keyout[1023:896]) ,  .keyout(Keyout[895:768]));
KeyGeneration uut11 (.rc(9) ,.key(Keyout[895:768]) ,   .keyout(Keyout[767:640]));


endmodule
