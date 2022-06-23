module KeyGeneration_256(Keyin,Keyout);

input[255:0] Keyin;
output [2047:0] Keyout;

assign Keyout[2047:1792] = Keyin;
KeyGeneration256 uut17 (.rc(0) ,.key(Keyin) , .keyout(Keyout[1791:1536]));
KeyGeneration256 uut27 (.rc(1) ,.key(Keyout[1791:1536]) , .keyout(Keyout[1535:1280]));
KeyGeneration256 uut37 (.rc(2) ,.key(Keyout[1535:1280]) , .keyout(Keyout[1279:1024]));
KeyGeneration256 uut47 (.rc(3) ,.key(Keyout[1279:1024]) , .keyout(Keyout[1023:768]));
KeyGeneration256 uut57 (.rc(4) ,.key(Keyout[1023:768]) ,  .keyout(Keyout[767:512]));
KeyGeneration256 uut67 (.rc(5) ,.key(Keyout[767:512]) ,   .keyout(Keyout[511:256]));
KeyGeneration256 uut77 (.rc(6) ,.key(Keyout[511:256]) ,   .keyout(Keyout[255:0]));



endmodule
