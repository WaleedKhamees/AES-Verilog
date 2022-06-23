module InverseCipher
#(parameter Nr = 10)
(in, out, Key);


input [127 : 0] in;
output [127 : 0] out;
input [(Nr - 6) * 32 - 1 : 0] Key;

wire [127 : 0] tempOut0;
wire [127 : 0] tempOut1;
wire [127 : 0] tempOut2;
wire [127 : 0] tempOut3;
wire [127 : 0] tempOut4;
wire [127 : 0] tempOut5;
wire [127 : 0] tempOut6;
wire [127 : 0] tempOut7;
wire [127 : 0] tempOut8;
wire [127 : 0] tempOut9;

wire [127 : 0] tempOut10;
wire [127 : 0] tempOut11;
wire [127 : 0] tempOut12;
wire [127 : 0] tempOut13;
wire [127 : 0] tempOut14;
wire [127 : 0] tempOut15;
wire [127 : 0] tempOut16;
wire [127 : 0] tempOut17;
wire [127 : 0] tempOut18;
wire [127 : 0] tempOut19;
wire [127 : 0] tempOut20;

wire [127 : 0] tempOut21;
wire [127 : 0] tempOut22;
wire [127 : 0] tempOut23;
wire [127 : 0] tempOut24;
wire [127 : 0] tempOut25;
wire [127 : 0] tempOut26;
wire [127 : 0] tempOut27;
wire [127 : 0] tempOut28;
wire [127 : 0] tempOut29;
wire [127 : 0] tempOut30;

wire [127 : 0] tempOut31;
wire [127 : 0] tempOut32;
wire [127 : 0] tempOut33;
wire [127 : 0] tempOut34;
wire [127 : 0] tempOut35;
wire [127 : 0] tempOut36;
wire [127 : 0] tempOut37;
wire [127 : 0] tempOut38;
wire [127 : 0] tempOut39;
wire [127 : 0] tempOut40;

wire [127 : 0] tempOut41;
wire [127 : 0] tempOut42;
wire [127 : 0] tempOut43;
wire [127 : 0] tempOut44;
wire [127 : 0] tempOut45;
wire [127 : 0] tempOut46;
wire [127 : 0] tempOut47;
wire [127 : 0] tempOut48;
wire [127 : 0] tempOut49;
wire [127 : 0] tempOut50;

wire [127 : 0] tempOut51;
wire [127 : 0] tempOut52;
wire [127 : 0] tempOut53;
wire [127 : 0] tempOut54;
wire [127 : 0] tempOut55;
wire [127 : 0] tempOut56;
wire [127 : 0] tempOut57;
wire [127 : 0] tempOut58;
wire [127 : 0] tempOut59;
wire [127 : 0] tempOut60;

wire [ 0 : 4 * 32 * (Nr + 1) - 1] w;

KeyExpansion #(.Nk(Nr - 6)) u (.Key(Key), .w(w));
/*
initial 
begin
#20;
$display("\n\nw: %h\n\n", w);
end
*/
//assign w = 'h13111d7fe3944a17f307a78b4d2b30c5_549932d1f08557681093ed9cbe2c974e_47438735a41c65b9e016baf4aebf7ad2_14f9701ae35fe28c440adf4d4ea9c026_5e390f7df7a69296a7553dc10aa31f6b_3caaa3e8a99f9deb50f3af57adf622aa_47f7f7bc95353e03f96c32bcfd058dfd_b6ff744ed2c2c9bf6c590cbf0469bf41_b692cf0b643dbdf1be9bc5006830b3fe_d6aa74fdd2af72fadaa678f1d6ab76fe_000102030405060708090a0b0c0d0e0f;

//assign w = 'ha4970a331a78dc09c418c271e3a41d5d_de601e7827bcdf2ca223800fd8aeda32_859f5f237a8d5a3dc0c02952beefd63a_dd7e0e887e2fff68608fc842f9dcc154_1ea0372a995309167c439e77ff12051e_e510976183519b6934157c9ea351f1e0_f501857297448d7ebdf1c6ca87f33e3c_2ab54bb43a02f8f662e3a95d66410c08_58e151ab04a2a5557effb5416245080c_40f949b31cbabd4d48f043b810b7b342_544afef55847f0fa4856e2e95c43f4fe_10111213141516175846f2f95c43f4fe_000102030405060708090a0b0c0d0e0f;

//assign w = 'h24fc79ccbf0979e9371ac23c6d68de36_4e5a6699a9f24fe07e572baacdf8cdea_2541fe719bf500258813bbd55a721c0a_f01afafee7a82979d7a5644ab3afe640_7ccff71cbeb4fe5413e6bbf0d261a7df_45f5a66017b2d387300d4d33640a820a_0bdc905fc27b0948ad5245a4c1871c2f_3de23a75524775e727bf9eb45407cf39_c656827fc9a799176f294cec6cd5598b_6de1f1486fa54f9275f8eb5373b8518d_ae87dff00ff11b68a68ed5fb03fc1567_1651a8cd0244beda1a5da4c10640bade_a573c29fa176c498a97fce93a572c09c_101112131415161718191a1b1c1d1e1f_000102030405060708090a0b0c0d0e0f;
AddRoundKey uut0 (.Key(w[(Nr + 1) * 4 * 32 - 1 -: 128]), .inMatrix(in), .outMatrix(tempOut0));

genvar i;

/*
always @(*)
begin
$display("tempOut: %h\n\ntempOut1: %h\n\ntempOut2: %h\n\ntempOut3: %h\n\ntempOut4: %h \n\n", tempOut0, tempOut1, tempOut2, tempOut3, tempOut4);
end
*/
generate 
if(Nr == 10)
begin
//Round = 9
InvShiftRows uut1 (.stateIn(tempOut0), .stateOut(tempOut1));
InvSubBytes uut2 (.stateIn(tempOut1), .stateOut(tempOut2));
AddRoundKey uut3 (.Key(w[(Nr) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut2), .outMatrix(tempOut3));
inverseMixColumn uut4 (.in(tempOut3), .out(tempOut4));

//Round = 8
InvShiftRows uut5 (.stateIn(tempOut4), .stateOut(tempOut5));
InvSubBytes uut6 (.stateIn(tempOut5), .stateOut(tempOut6));
AddRoundKey uut7 (.Key(w[(Nr - 1) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut6), .outMatrix(tempOut7));
inverseMixColumn uut8 (.in(tempOut7), .out(tempOut8));

//Round = 7
InvShiftRows uut9 (.stateIn(tempOut8), .stateOut(tempOut9));
InvSubBytes uut10 (.stateIn(tempOut9), .stateOut(tempOut10));
AddRoundKey uut11 (.Key(w[(Nr - 2) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut10), .outMatrix(tempOut11));
inverseMixColumn uut12 (.in(tempOut11), .out(tempOut12));

//Round = 6
InvShiftRows uut13 (.stateIn(tempOut12), .stateOut(tempOut13));
InvSubBytes uut14 (.stateIn(tempOut13), .stateOut(tempOut14));
AddRoundKey uut15 (.Key(w[(Nr - 3) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut14), .outMatrix(tempOut15));
inverseMixColumn uut16 (.in(tempOut15), .out(tempOut16));

//Round = 5
InvShiftRows uut17 (.stateIn(tempOut16), .stateOut(tempOut17));
InvSubBytes uut18 (.stateIn(tempOut17), .stateOut(tempOut18));
AddRoundKey uut19 (.Key(w[(Nr - 4) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut18), .outMatrix(tempOut19));
inverseMixColumn uut20 (.in(tempOut19), .out(tempOut20));

//Round = 4
InvShiftRows uut21 (.stateIn(tempOut20), .stateOut(tempOut21));
InvSubBytes uut22 (.stateIn(tempOut21), .stateOut(tempOut22));
AddRoundKey uut23 (.Key(w[(Nr - 5) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut22), .outMatrix(tempOut23));
inverseMixColumn uut24 (.in(tempOut23), .out(tempOut24));

//Round = 3
InvShiftRows uut25 (.stateIn(tempOut24), .stateOut(tempOut25));
InvSubBytes uut26 (.stateIn(tempOut25), .stateOut(tempOut26));
AddRoundKey uut27 (.Key(w[(Nr - 6) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut26), .outMatrix(tempOut27));
inverseMixColumn uut28 (.in(tempOut27), .out(tempOut28));

//Round = 2
InvShiftRows uut29 (.stateIn(tempOut28), .stateOut(tempOut29));
InvSubBytes uut30 (.stateIn(tempOut29), .stateOut(tempOut30));
AddRoundKey uut31 (.Key(w[(Nr - 7) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut30), .outMatrix(tempOut31));
inverseMixColumn uut32 (.in(tempOut31), .out(tempOut32));

//Round = 1
InvShiftRows uut33 (.stateIn(tempOut32), .stateOut(tempOut33));
InvSubBytes uut34 (.stateIn(tempOut33), .stateOut(tempOut34));
AddRoundKey uut35 (.Key(w[(Nr - 8) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut34), .outMatrix(tempOut35));
inverseMixColumn uut36 (.in(tempOut35), .out(tempOut36));


InvShiftRows uut37 (.stateIn(tempOut36), .stateOut(tempOut37));
InvSubBytes uut38 (.stateIn(tempOut37), .stateOut(tempOut38));
AddRoundKey uut39 (.Key(w[(Nr - 9) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut38), .outMatrix(tempOut39));

assign out = tempOut39;

end

else if (Nr == 12)
begin
//Round = 11
InvShiftRows uut1 (.stateIn(tempOut0), .stateOut(tempOut1));
InvSubBytes uut2 (.stateIn(tempOut1), .stateOut(tempOut2));
AddRoundKey uut3 (.Key(w[(Nr) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut2), .outMatrix(tempOut3));
inverseMixColumn uut4 (.in(tempOut3), .out(tempOut4));

//Round = 10
InvShiftRows uut5 (.stateIn(tempOut4), .stateOut(tempOut5));
InvSubBytes uut6 (.stateIn(tempOut5), .stateOut(tempOut6));
AddRoundKey uut7 (.Key(w[(Nr - 1) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut6), .outMatrix(tempOut7));
inverseMixColumn uut8 (.in(tempOut7), .out(tempOut8));

//Round = 9
InvShiftRows uut9 (.stateIn(tempOut8), .stateOut(tempOut9));
InvSubBytes uut10 (.stateIn(tempOut9), .stateOut(tempOut10));
AddRoundKey uut11 (.Key(w[(Nr - 2) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut10), .outMatrix(tempOut11));
inverseMixColumn uut12 (.in(tempOut11), .out(tempOut12));

//Round = 8
InvShiftRows uut13 (.stateIn(tempOut12), .stateOut(tempOut13));
InvSubBytes uut14 (.stateIn(tempOut13), .stateOut(tempOut14));
AddRoundKey uut15 (.Key(w[(Nr - 3) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut14), .outMatrix(tempOut15));
inverseMixColumn uut16 (.in(tempOut15), .out(tempOut16));

//Round = 7
InvShiftRows uut17 (.stateIn(tempOut16), .stateOut(tempOut17));
InvSubBytes uut18 (.stateIn(tempOut17), .stateOut(tempOut18));
AddRoundKey uut19 (.Key(w[(Nr - 4) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut18), .outMatrix(tempOut19));
inverseMixColumn uut20 (.in(tempOut19), .out(tempOut20));

//Round = 6
InvShiftRows uut21 (.stateIn(tempOut20), .stateOut(tempOut21));
InvSubBytes uut22 (.stateIn(tempOut21), .stateOut(tempOut22));
AddRoundKey uut23 (.Key(w[(Nr - 5) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut22), .outMatrix(tempOut23));
inverseMixColumn uut24 (.in(tempOut23), .out(tempOut24));

//Round = 5
InvShiftRows uut25 (.stateIn(tempOut24), .stateOut(tempOut25));
InvSubBytes uut26 (.stateIn(tempOut25), .stateOut(tempOut26));
AddRoundKey uut27 (.Key(w[(Nr - 6) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut26), .outMatrix(tempOut27));
inverseMixColumn uut28 (.in(tempOut27), .out(tempOut28));

//Round = 4
InvShiftRows uut29 (.stateIn(tempOut28), .stateOut(tempOut29));
InvSubBytes uut30 (.stateIn(tempOut29), .stateOut(tempOut30));
AddRoundKey uut31 (.Key(w[(Nr - 7) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut30), .outMatrix(tempOut31));
inverseMixColumn uut32 (.in(tempOut31), .out(tempOut32));

//Round = 3
InvShiftRows uut33 (.stateIn(tempOut32), .stateOut(tempOut33));
InvSubBytes uut34 (.stateIn(tempOut33), .stateOut(tempOut34));
AddRoundKey uut35 (.Key(w[(Nr - 8) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut34), .outMatrix(tempOut35));
inverseMixColumn uut36 (.in(tempOut35), .out(tempOut36));

//Round == 2
InvShiftRows uut37 (.stateIn(tempOut36), .stateOut(tempOut37));
InvSubBytes uut38 (.stateIn(tempOut37), .stateOut(tempOut38));
AddRoundKey uut39 (.Key(w[(Nr - 9) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut38), .outMatrix(tempOut39));
inverseMixColumn uut40 (.in(tempOut39), .out(tempOut40));

//Round = 1
InvShiftRows uut41 (.stateIn(tempOut40), .stateOut(tempOut41));
InvSubBytes uut42 (.stateIn(tempOut41), .stateOut(tempOut42));
AddRoundKey uut43 (.Key(w[(Nr - 10) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut42), .outMatrix(tempOut43));
inverseMixColumn uut44 (.in(tempOut43), .out(tempOut44));


InvShiftRows uut45 (.stateIn(tempOut44), .stateOut(tempOut45));
InvSubBytes uut46 (.stateIn(tempOut45), .stateOut(tempOut46));
AddRoundKey uut47 (.Key(w[(Nr - 11) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut46), .outMatrix(tempOut47));

assign out = tempOut47;

end


else if (Nr == 14)
begin
//Round = 13
InvShiftRows uut1 (.stateIn(tempOut0), .stateOut(tempOut1));
InvSubBytes uut2 (.stateIn(tempOut1), .stateOut(tempOut2));
AddRoundKey uut3 (.Key(w[(Nr) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut2), .outMatrix(tempOut3));
inverseMixColumn uut4 (.in(tempOut3), .out(tempOut4));

//Round = 12
InvShiftRows uut5 (.stateIn(tempOut4), .stateOut(tempOut5));
InvSubBytes uut6 (.stateIn(tempOut5), .stateOut(tempOut6));
AddRoundKey uut7 (.Key(w[(Nr - 1) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut6), .outMatrix(tempOut7));
inverseMixColumn uut8 (.in(tempOut7), .out(tempOut8));

//Round = 11
InvShiftRows uut9 (.stateIn(tempOut8), .stateOut(tempOut9));
InvSubBytes uut10 (.stateIn(tempOut9), .stateOut(tempOut10));
AddRoundKey uut11 (.Key(w[(Nr - 2) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut10), .outMatrix(tempOut11));
inverseMixColumn uut12 (.in(tempOut11), .out(tempOut12));

//Round = 10
InvShiftRows uut13 (.stateIn(tempOut12), .stateOut(tempOut13));
InvSubBytes uut14 (.stateIn(tempOut13), .stateOut(tempOut14));
AddRoundKey uut15 (.Key(w[(Nr - 3) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut14), .outMatrix(tempOut15));
inverseMixColumn uut16 (.in(tempOut15), .out(tempOut16));

//Round = 9
InvShiftRows uut17 (.stateIn(tempOut16), .stateOut(tempOut17));
InvSubBytes uut18 (.stateIn(tempOut17), .stateOut(tempOut18));
AddRoundKey uut19 (.Key(w[(Nr - 4) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut18), .outMatrix(tempOut19));
inverseMixColumn uut20 (.in(tempOut19), .out(tempOut20));

//Round = 8
InvShiftRows uut21 (.stateIn(tempOut20), .stateOut(tempOut21));
InvSubBytes uut22 (.stateIn(tempOut21), .stateOut(tempOut22));
AddRoundKey uut23 (.Key(w[(Nr - 5) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut22), .outMatrix(tempOut23));
inverseMixColumn uut24 (.in(tempOut23), .out(tempOut24));

//Round = 7
InvShiftRows uut25 (.stateIn(tempOut24), .stateOut(tempOut25));
InvSubBytes uut26 (.stateIn(tempOut25), .stateOut(tempOut26));
AddRoundKey uut27 (.Key(w[(Nr - 6) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut26), .outMatrix(tempOut27));
inverseMixColumn uut28 (.in(tempOut27), .out(tempOut28));

//Round = 6
InvShiftRows uut29 (.stateIn(tempOut28), .stateOut(tempOut29));
InvSubBytes uut30 (.stateIn(tempOut29), .stateOut(tempOut30));
AddRoundKey uut31 (.Key(w[(Nr - 7) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut30), .outMatrix(tempOut31));
inverseMixColumn uut32 (.in(tempOut31), .out(tempOut32));

//Round = 5
InvShiftRows uut33 (.stateIn(tempOut32), .stateOut(tempOut33));
InvSubBytes uut34 (.stateIn(tempOut33), .stateOut(tempOut34));
AddRoundKey uut35 (.Key(w[(Nr - 8) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut34), .outMatrix(tempOut35));
inverseMixColumn uut36 (.in(tempOut35), .out(tempOut36));

//Round == 4
InvShiftRows uut37 (.stateIn(tempOut36), .stateOut(tempOut37));
InvSubBytes uut38 (.stateIn(tempOut37), .stateOut(tempOut38));
AddRoundKey uut39 (.Key(w[(Nr - 9) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut38), .outMatrix(tempOut39));
inverseMixColumn uut40 (.in(tempOut39), .out(tempOut40));

//Round = 3
InvShiftRows uut41 (.stateIn(tempOut40), .stateOut(tempOut41));
InvSubBytes uut42 (.stateIn(tempOut41), .stateOut(tempOut42));
AddRoundKey uut43 (.Key(w[(Nr - 10) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut42), .outMatrix(tempOut43));
inverseMixColumn uut44 (.in(tempOut43), .out(tempOut44));

//Round = 2
InvShiftRows uut45 (.stateIn(tempOut44), .stateOut(tempOut45));
InvSubBytes uut46 (.stateIn(tempOut45), .stateOut(tempOut46));
AddRoundKey uut47 (.Key(w[(Nr - 11) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut46), .outMatrix(tempOut47));
inverseMixColumn uut48 (.in(tempOut47), .out(tempOut48));

//Round = 1
InvShiftRows uut49 (.stateIn(tempOut48), .stateOut(tempOut49));
InvSubBytes uut50 (.stateIn(tempOut49), .stateOut(tempOut50));
AddRoundKey uut51 (.Key(w[(Nr - 12) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut50), .outMatrix(tempOut51));
inverseMixColumn uut52 (.in(tempOut51), .out(tempOut52));


InvShiftRows uut53 (.stateIn(tempOut52), .stateOut(tempOut53));
InvSubBytes uut54 (.stateIn(tempOut53), .stateOut(tempOut54));
AddRoundKey uut55 (.Key(w[(Nr - 13) * 4 * 32 - 1 -: 128]), .inMatrix(tempOut54), .outMatrix(tempOut55));

assign out = tempOut55;

end


endgenerate
endmodule




module tbs;


parameter Nr = 10;
reg [127 : 0] in;
wire [127 : 0] out;
reg [(Nr - 6) * 32 - 1 : 0] Key;

InverseCipher #(.Nr(Nr)) uut (.in(in), .out(out), .Key(Key));



initial 
begin
in =  'h69c4e0d86a7b0430d8cdb78070b4c55a;
Key = 'h000102030405060708090a0b0c0d0e0f;

#40;

$display("in: %h\n\nout: %h\n\n", in, out);


end

endmodule



/*
for(i = Nr - 1 ; i >= 1 ; i = i - 1)
begin : Kiro
if(i == Nr - 1)
InvShiftRows uut1 (.stateIn(tempOut0), .stateOut(tempOut1));
else
InvShiftRows uut1 (.stateIn(tempOut4[(i + 1) * 128 - 1 -: 128]), .stateOut(tempOut1[(i) * 128 - 1 -: 128]));

InvSubBytes uut2(.stateIn(tempOut1[(i) * 128 - 1 -: 128]), .stateOut(tempOut2[(i) * 128 - 1 -: 128]));

AddRoundKey uut3 (.Key(w[(i + 1) * 32 * 4 - 1 -: 128]), .inMatrix(tempOut2[(i) * 128 - 1 -: 128]), .outMatrix(tempOut3[(i) * 128 - 1 -: 128]));

inverseMixColumn uut4 (.in(tempOut3[(i) * 128 - 1 -: 128]), .out(tempOut4[(i) * 128 - 1 -: 128])); 
if(i == 1)
assign out = tempOut4[127 : 0];

end
*/

