module Wrapper (
clk,
enable,
reset,
right
);

input  clk;
input  enable;
input  reset;
integer i=0;
output right;

reg  [127:0] in;
wire [127:0] out0;
wire [127:0] out1;
wire [127:0] out2;

reg [255:0] Key;

parameter Nr10 = 10;
parameter Nr12 = 12;

reg [3:0] state = 0;

wire [127:0] expectedOut;

wire [127 : 0] tempOut;
//assign expectedOut = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;

Cipher u (.word(in), .Key(Key), .nk(6), .wordout(tempOut));


InverseCipher #(.Nr(Nr12)) u0 (.Key(Key), .in(tempOut) , .out(out0));

//InverseCipher #(.Nr(Nr12)) u1 (.Key(Key), .in(in) , .out(out1));

//InverseCipher #(.Nr(Nr14)) u2 (.Key(Key), .in(in) , .out(out2));

											 //128'h00112233445566778899aabbccddeeff
						
//reg check = 0;
assign right = (in == out0 && i >= 2) ? 1 : 0;

always @(posedge reset)
begin
i=i+1;
end
always @(negedge clk or posedge reset)
begin
if(reset)
begin
in  = 128'h00112233445566778899aabbccddeeff;
Key = 192'h000102030405060708090a0b0c0d0e0f1011121314151617;

state = 1;
end
else if(enable)
begin


if(state == 0)
begin
in  = 128'h00112233445566778899aabbccddeebb;//Last two letters are different
Key = 192'h000102030405060708090a0b0c0d0e0f1011121314151617;
state = 1;

end
else if(state == 1)
begin
in  = 128'h00112233445566778899aabbccddeeee;//Last two letters are different
Key = 192'h000102030405060708090a0b0c0d0e0f1011121314151617;


state = 0;
end

end
end

endmodule

module Wrapper_tb();

reg clk;
reg enable;
reg reset;
wire right;

Wrapper uu(.clk(clk),
.enable(enable),
.reset(reset),
.right(right));

initial
begin


clk = 1;
reset = 0;
enable = 0;
#50

reset = 1;
clk = 0;
enable = 1;
$display("right: %h\n\n", right);
#50;
reset = 0;
clk = 1;
#50
clk = 0;


#50
clk = 1;
#50
clk = 0;


#50;
clk = 1;
#50
clk = 0;


#50
clk = 1;
#50
clk = 0;


#50;


end

endmodule


/*
else if(state == 2)
begin
in = 128'h6BC1BEE22E409F96E93D7E117393172A;
Key  = 128'h2B7E151628AED2A6ABF7158809CF4F3C;

#5 $display("tempOut0: %h\n\nright: %h\n\nout0: %h\n\n", tempOut, right, out0);
state = 3;
end
else if(state == 3)
begin
in = 128'hAE2D8A571E03AC9C9EB76FAC45AF8E51;
Key  = 128'h2B7E151628AED2A6ABF7158809CF4F3C;
#5 $display("tempOut0: %h\n\nright: %h\n\nout0: %h\n\n", tempOut, right, out0);
state = 0;
end
*/ 


