


/*
module Ciphertb;

reg [127:0] word;
reg [3:0] nk;
reg [255:0] key;

wire [127:0] wordout;

Cipher uut ( .word(word) , .key(key) , .nk(nk) , .wordout(wordout));


initial
begin

key = 'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;

word = 'h00112233445566778899aabbccddeeff; 

nk = 8;

//key[127:0] = 'd0;

#20;
$display("wordout:\n%h \n", wordout[127:0]);
//$display("keyout:\n%h \n", keyout[127:0]);

#20;

end



/*

reg[127:0] keyin;
wire [1407:0] keyout;

KeyGeneration128 uut (.keyin(keyin),.keyout(keyout));


initial 
begin


keyin = 'h2B7E151628AED2A6ABF7158809CF4F3C; 

#20;
$display("keyout:\n%h \n", keyout[1407:0]);
#20;


end

*/
/*


endmodule

*/