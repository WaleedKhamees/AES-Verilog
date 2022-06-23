module KeyGeneration_192(Keyin,Keyout);

input[191:0] Keyin;
output [2047:0] Keyout;

assign Keyout[2047:1856]=Keyin;

KeyGeneration192 uut21 (.rc(0) ,.key(Keyin) , .keyout(Keyout[1855:1664]));
KeyGeneration192 uut31 (.rc(1) ,.key(Keyout[1855:1664]) , .keyout(Keyout[1663:1472]));
KeyGeneration192 uut41 (.rc(2) ,.key(Keyout[1663:1472]) , .keyout(Keyout[1471:1280]));
KeyGeneration192 uut51 (.rc(3) ,.key(Keyout[1471:1280]) , .keyout(Keyout[1279:1088]));
KeyGeneration192 uut61 (.rc(4) ,.key(Keyout[1279:1088]) , .keyout(Keyout[1087:896]));
KeyGeneration192 uut71 (.rc(5) ,.key(Keyout[1087:896]) ,  .keyout(Keyout[895:704]));
KeyGeneration192 uut81 (.rc(6) ,.key(Keyout[895:704]) ,   .keyout(Keyout[703:512]));
KeyGeneration192 uut91 (.rc(7) ,.key(Keyout[703:512]) ,   .keyout(Keyout[511:320]));



endmodule
