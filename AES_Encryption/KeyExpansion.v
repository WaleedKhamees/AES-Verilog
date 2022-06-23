//Author : Kirollos Baghdad



module SubWord(stateIn, stateOut);

input [31 : 0] stateIn;
output [31 : 0] stateOut;


    
wire [2047:0] c;
    

    assign  c[7:0]=8'h63;
	 assign  c[15:8]=8'h7c;
	 assign  c[23:16]=8'h77;
	 assign  c[31:24]=8'h7b;
	 assign  c[39:32]=8'hf2;
	 assign  c[47:40]=8'h6b;
	 assign  c[55:48]=8'h6f;
	 assign  c[63:56]=8'hc5;
	 assign  c[71:64]=8'h30;
	 assign  c[79:72]=8'h01;
	 assign  c[87:80]=8'h67;
	 assign  c[95:88]=8'h2b;
	 assign  c[103:96]=8'hfe;
	 assign  c[111:104]=8'hd7;
	 assign  c[119:112]=8'hab;
	 assign  c[127:120]=8'h76;
	 assign  c[135:128]=8'hca;
	 assign  c[143:136]=8'h82;
	 assign  c[151:144]=8'hc9;
	 assign  c[159:152]=8'h7d;
	 assign  c[167:160]=8'hfa;
	 assign  c[175:168]=8'h59;
	 assign  c[183:176]=8'h47;
	 assign  c[191:184]=8'hf0;
	 assign  c[199:192]=8'had;
	 assign  c[207:200]=8'hd4;
	 assign  c[215:208]=8'ha2;
	 assign  c[223:216]=8'haf;
	 assign  c[231:224]=8'h9c;
	 assign  c[239:232]=8'ha4;
	 assign  c[247:240]=8'h72;
	 assign  c[255:248]=8'hc0;
	 assign  c[263:256]=8'hb7;
	 assign  c[271:264]=8'hfd;
	 assign  c[279:272]=8'h93;
	 assign  c[287:280]=8'h26;
	 assign  c[295:288]=8'h36;
	 assign  c[303:296]=8'h3f;
	 assign  c[311:304]=8'hf7;
	 assign  c[319:312]=8'hcc;
	 assign  c[327:320]=8'h34;
	 assign  c[335:328]=8'ha5;
	 assign  c[343:336]=8'he5;
	 assign  c[351:344]=8'hf1;
	 assign  c[359:352]=8'h71;
	 assign  c[367:360]=8'hd8;
	 assign  c[375:368]=8'h31;
	 assign  c[383:376]=8'h15;
	 assign  c[391:384]=8'h04;
	 assign  c[399:392]=8'hc7;
	 assign  c[407:400]=8'h23;
	 assign  c[415:408]=8'hc3;
	 assign  c[423:416]=8'h18;
	 assign  c[431:424]=8'h96;
	 assign  c[439:432]=8'h05;
	 assign  c[447:440]=8'h9a;
	 assign  c[455:448]=8'h07;
	 assign  c[463:456]=8'h12;
	 assign  c[471:464]=8'h80;
	 assign  c[479:472]=8'he2;
	 assign  c[487:480]=8'heb;
	 assign  c[495:488]=8'h27;
	 assign  c[503:496]=8'hb2;
	 assign  c[511:504]=8'h75;
	 assign  c[519:512]=8'h09;
	 assign  c[527:520]=8'h83;
	 assign  c[535:528]=8'h2c;
	 assign  c[543:536]=8'h1a;
	 assign  c[551:544]=8'h1b;
	 assign  c[559:552]=8'h6e;
	 assign  c[567:560]=8'h5a;
	 assign  c[575:568]=8'ha0;
	 assign  c[583:576]=8'h52;
	 assign  c[591:584]=8'h3b;
	 assign  c[599:592]=8'hd6;
	 assign  c[607:600]=8'hb3;
	 assign  c[615:608]=8'h29;
	 assign  c[623:616]=8'he3;
	 assign  c[631:624]=8'h2f;
	 assign  c[639:632]=8'h84;
	 assign  c[647:640]=8'h53;
	 assign  c[655:648]=8'hd1;
	 assign  c[663:656]=8'h00;
	 assign  c[671:664]=8'hed;
	 assign  c[679:672]=8'h20;
	 assign  c[687:680]=8'hfc;
	 assign  c[695:688]=8'hb1;
	 assign  c[703:696]=8'h5b;
	 assign  c[711:704]=8'h6a;
	 assign  c[719:712]=8'hcb;
	 assign  c[727:720]=8'hbe;
	 assign  c[735:728]=8'h39;
	 assign  c[743:736]=8'h4a;
	 assign  c[751:744]=8'h4c;
	 assign  c[759:752]=8'h58;
	 assign  c[767:760]=8'hcf;
	 assign  c[775:768]=8'hd0;
	 assign  c[783:776]=8'hef;
	 assign  c[791:784]=8'haa;
	 assign  c[799:792]=8'hfb;
	 assign  c[807:800]=8'h43;
	 assign  c[815:808]=8'h4d;
	 assign  c[823:816]=8'h33;
	 assign  c[831:824]=8'h85;
	 assign  c[839:832]=8'h45;
	 assign  c[847:840]=8'hf9;
	 assign  c[855:848]=8'h02;
	 assign  c[863:856]=8'h7f;
	 assign  c[871:864]=8'h50;
	 assign  c[879:872]=8'h3c;
	 assign  c[887:880]=8'h9f;
	 assign  c[895:888]=8'ha8;
	 assign  c[903:896]=8'h51;
	 assign  c[911:904]=8'ha3;
	 assign  c[919:912]=8'h40;
	 assign  c[927:920]=8'h8f;
	 assign  c[935:928]=8'h92;
	 assign  c[943:936]=8'h9d;
	 assign  c[951:944]=8'h38;
	 assign  c[959:952]=8'hf5;
	 assign  c[967:960]=8'hbc;
	 assign  c[975:968]=8'hb6;
	 assign  c[983:976]=8'hda;
	 assign  c[991:984]=8'h21;
	 assign  c[999:992]=8'h10;
	 assign  c[1007:1000]=8'hff;
	 assign  c[1015:1008]=8'hf3;
	 assign  c[1023:1016]=8'hd2;
	 assign  c[1031:1024]=8'hcd;
	 assign  c[1039:1032]=8'h0c;
	 assign  c[1047:1040]=8'h13;
	 assign  c[1055:1048]=8'hec;
	 assign  c[1063:1056]=8'h5f;
	 assign  c[1071:1064]=8'h97;
	 assign  c[1079:1072]=8'h44;
	 assign  c[1087:1080]=8'h17;
	 assign  c[1095:1088]=8'hc4;
	 assign  c[1103:1096]=8'ha7;
	 assign  c[1111:1104]=8'h7e;
	 assign  c[1119:1112]=8'h3d;
	 assign  c[1127:1120]=8'h64;
	 assign  c[1135:1128]=8'h5d;
	 assign  c[1143:1136]=8'h19;
	 assign  c[1151:1144]=8'h73;
	 assign  c[1159:1152]=8'h60;
	 assign  c[1167:1160]=8'h81;
	 assign  c[1175:1168]=8'h4f;
	 assign  c[1183:1176]=8'hdc;
	 assign  c[1191:1184]=8'h22;
	 assign  c[1199:1192]=8'h2a;
	 assign  c[1207:1200]=8'h90;
	 assign  c[1215:1208]=8'h88;
	 assign  c[1223:1216]=8'h46;
	 assign  c[1231:1224]=8'hee;
	 assign  c[1239:1232]=8'hb8;
	 assign  c[1247:1240]=8'h14;
	 assign  c[1255:1248]=8'hde;
	 assign  c[1263:1256]=8'h5e;
	 assign  c[1271:1264]=8'h0b;
	 assign  c[1279:1272]=8'hdb;
	 assign  c[1287:1280]=8'he0;
	 assign  c[1295:1288]=8'h32;
	 assign  c[1303:1296]=8'h3a;
	 assign  c[1311:1304]=8'h0a;
	 assign  c[1319:1312]=8'h49;
	 assign  c[1327:1320]=8'h06;
	 assign  c[1335:1328]=8'h24;
	 assign  c[1343:1336]=8'h5c;
	 assign  c[1351:1344]=8'hc2;
	 assign  c[1359:1352]=8'hd3;
	 assign  c[1367:1360]=8'hac;
	 assign  c[1375:1368]=8'h62;
	 assign  c[1383:1376]=8'h91;
	 assign  c[1391:1384]=8'h95;
	 assign  c[1399:1392]=8'he4;
	 assign  c[1407:1400]=8'h79;
	 assign  c[1415:1408]=8'he7;
	 assign  c[1423:1416]=8'hc8;
	 assign  c[1431:1424]=8'h37;
	 assign  c[1439:1432]=8'h6d;
	 assign  c[1447:1440]=8'h8d;
	 assign  c[1455:1448]=8'hd5;
	 assign  c[1463:1456]=8'h4e;
	 assign  c[1471:1464]=8'ha9;
	 assign  c[1479:1472]=8'h6c;
	 assign  c[1487:1480]=8'h56;
	 assign  c[1495:1488]=8'hf4;
	 assign  c[1503:1496]=8'hea;
	 assign  c[1511:1504]=8'h65;
	 assign  c[1519:1512]=8'h7a;
	 assign  c[1527:1520]=8'hae;
	 assign  c[1535:1528]=8'h08;
	 assign  c[1543:1536]=8'hba;
	 assign  c[1551:1544]=8'h78;
	 assign  c[1559:1552]=8'h25;
	 assign  c[1567:1560]=8'h2e;
	 assign  c[1575:1568]=8'h1c;
	 assign  c[1583:1576]=8'ha6;
	 assign  c[1591:1584]=8'hb4;
	 assign  c[1599:1592]=8'hc6;
	 assign  c[1607:1600]=8'he8;
	 assign  c[1615:1608]=8'hdd;
	 assign  c[1623:1616]=8'h74;
	 assign  c[1631:1624]=8'h1f;
	 assign  c[1639:1632]=8'h4b;
	 assign  c[1647:1640]=8'hbd;
	 assign  c[1655:1648]=8'h8b;
	 assign  c[1663:1656]=8'h8a;
	 assign  c[1671:1664]=8'h70;
	 assign  c[1679:1672]=8'h3e;
	 assign  c[1687:1680]=8'hb5;
	 assign  c[1695:1688]=8'h66;
	 assign  c[1703:1696]=8'h48;
	 assign  c[1711:1704]=8'h03;
	 assign  c[1719:1712]=8'hf6;
	 assign  c[1727:1720]=8'h0e;
	 assign  c[1735:1728]=8'h61;
	 assign  c[1743:1736]=8'h35;
	 assign  c[1751:1744]=8'h57;
	 assign  c[1759:1752]=8'hb9;
	 assign  c[1767:1760]=8'h86;
	 assign  c[1775:1768]=8'hc1;
	 assign  c[1783:1776]=8'h1d;
	 assign  c[1791:1784]=8'h9e;
	 assign  c[1799:1792]=8'he1;
	 assign  c[1807:1800]=8'hf8;
	 assign  c[1815:1808]=8'h98;
	 assign  c[1823:1816]=8'h11;
	 assign  c[1831:1824]=8'h69;
	 assign  c[1839:1832]=8'hd9;
	 assign  c[1847:1840]=8'h8e;
	 assign  c[1855:1848]=8'h94;
	 assign  c[1863:1856]=8'h9b;
	 assign  c[1871:1864]=8'h1e;
	 assign  c[1879:1872]=8'h87;
	 assign  c[1887:1880]=8'he9;
	 assign  c[1895:1888]=8'hce;
	 assign  c[1903:1896]=8'h55;
	 assign  c[1911:1904]=8'h28;
	 assign  c[1919:1912]=8'hdf;
	 assign  c[1927:1920]=8'h8c;
	 assign  c[1935:1928]=8'ha1;
	 assign  c[1943:1936]=8'h89;
	 assign  c[1951:1944]=8'h0d;
	 assign  c[1959:1952]=8'hbf;
	 assign  c[1967:1960]=8'he6;
	 assign  c[1975:1968]=8'h42;
	 assign  c[1983:1976]=8'h68;
	 assign  c[1991:1984]=8'h41;
	 assign  c[1999:1992]=8'h99;
	 assign  c[2007:2000]=8'h2d;
	 assign  c[2015:2008]=8'h0f;
	 assign  c[2023:2016]=8'hb0;
	 assign  c[2031:2024]=8'h54;
	 assign  c[2039:2032]=8'hbb;
	 assign  c[2047:2040]=8'h16;
	 
wire[10:0] i0;
wire[10:0] i1;
wire[10:0] i2;
wire[10:0] i3;
/*
wire[10:0] i4;
wire[10:0] i5;
wire[10:0] i6;
wire[10:0] i7;
wire[10:0] i8;
wire[10:0] i9;
wire[10:0] i10;
wire[10:0] i11;
wire[10:0] i12;
wire[10:0] i13;
wire[10:0] i14;
wire[10:0] i15;
*/
assign i0 = 'd128* stateIn[7:4] + 'd8*stateIn[3:0];
assign stateOut[7:0] = c[ i0 +: 8];

assign i1 = 'd128* stateIn[15:12] + 'd8*stateIn[11:8];
assign stateOut[15:8] = c[ i1 +: 8];

assign i2 = 'd128* stateIn[23:20] + 'd8*stateIn[19:16];
assign stateOut[23:16] = c[ i2 +: 8];

assign i3 = 'd128* stateIn[31:28] + 'd8*stateIn[27:24];
assign stateOut[31:24] = c[ i3 +: 8];
/*
assign i4 = 'd128* stateIn[39:36] + 'd8*stateIn[35:32];
assign stateOut[39:32] = c[ i4 +: 8];

assign i5 = 'd128* stateIn[47:44] + 'd8*stateIn[43:40];
assign stateOut[47:40] = c[ i5 +: 8];

assign i6 = 'd128* stateIn[55:52] + 'd8*stateIn[51:48] ;
assign stateOut[55:48] = c[ i6 +: 8 ];

assign i7 = 'd128* stateIn[63:60] + 'd8*stateIn[59:56];
assign stateOut[63:56] = c[ i7 +: 8];

assign i8 = 'd128* stateIn[71:68] + 'd8*stateIn[67:64];
assign stateOut[71:64] = c[ i8 +: 8];

assign i9 = 'd128* stateIn[79:76] + 'd8*stateIn[75:72];
assign stateOut[79:72] = c[ i9 +: 8];

assign i10 = 'd128* stateIn[87:84] + 'd8*stateIn[83:80];
assign stateOut[87:80] = c[ i10 +: 8];

assign i11 = 'd128* stateIn[95:92] + 'd8*stateIn[91:88];
assign stateOut[95:88] = c[ i11 +: 8];

assign i12 = 'd128* stateIn[103:100] + 'd8*stateIn[99:96];
assign stateOut[103:96] = c[ i12 +: 8];

assign i13 = 'd128* stateIn[111:108] + 'd8*stateIn[107:104];
assign stateOut[111:104] = c[ i13 +: 8];

assign i14 = 'd128* stateIn[119:116] + 'd8*stateIn[115:112];
assign stateOut[119:112] = c[ i14 +: 8];

assign i15 = 'd128* stateIn[127:124] + 'd8*stateIn[123:120];
assign stateOut[127:120] = c[ i15 +: 8];
*/
endmodule
 

module Rcon(in, out);

input [3 : 0] in;
output [31 : 0] out;

assign out = 
	(in == 1) ? 'h01000000 :
	(in == 2) ? 'h02000000 :
	(in == 3) ? 'h04000000 :
	(in == 4) ? 'h08000000 :
	(in == 5) ? 'h10000000 :
	(in == 6) ? 'h20000000 :
	(in == 7) ? 'h40000000 :
	(in == 8) ? 'h80000000 :
	(in == 9) ? 'h1b000000 :
	(in == 10)? 'h36000000 : 0;
	
endmodule
module RotWord(in, out);

input [31 : 0] in;
output [31 : 0] out;


assign out[15 : 8] = in[7 : 0];
assign out[23 : 16] = in [15 : 8];
assign out[31 : 24] = in[23 : 16];
assign out[7 : 0] = in[31 : 24];


endmodule

module KeyExpansion
#(parameter Nk = 4)
(Key, w);



input [4 * Nk * 8 - 1 : 0] Key;

output wire [4 * (Nk + 6 + 1) * 32 - 1 : 0] w; 

assign w[4 * (Nk + 6 + 1) * 32 - 1 -: Nk * 32] = Key;


wire [31 : 0] tempOut0;
wire [31 : 0] tempOut1;
wire [31 : 0] tempOut2;
wire [31 : 0] tempOut3;
wire [31 : 0] tempOut4;
wire [31 : 0] tempOut5;
wire [31 : 0] tempOut6;
wire [31 : 0] tempOut7;
wire [31 : 0] tempOut8;
wire [31 : 0] tempOut9;
wire [31 : 0] tempOut10;
wire [31 : 0] tempOut11;
wire [31 : 0] tempOut12;
wire [31 : 0] tempOut13;
wire [31 : 0] tempOut14;
wire [31 : 0] tempOut15;
wire [31 : 0] tempOut16;
wire [31 : 0] tempOut17;
wire [31 : 0] tempOut18;
wire [31 : 0] tempOut19;
wire [31 : 0] tempOut20;
wire [31 : 0] tempOut21;
wire [31 : 0] tempOut22;
wire [31 : 0] tempOut23;
wire [31 : 0] tempOut24;
wire [31 : 0] tempOut25;
wire [31 : 0] tempOut26;
wire [31 : 0] tempOut27;
wire [31 : 0] tempOut28;
wire [31 : 0] tempOut29;
wire [31 : 0] tempOut30;
wire [31 : 0] tempOut31;
wire [31 : 0] tempOut32;
wire [31 : 0] tempOut33;
wire [31 : 0] tempOut34;
wire [31 : 0] tempOut35;
wire [31 : 0] tempOut36;
wire [31 : 0] tempOut37;
wire [31 : 0] tempOut38;
wire [31 : 0] tempOut39;
wire [31 : 0] tempOut40;
wire [31 : 0] tempOut41;
wire [31 : 0] tempOut42;
wire [31 : 0] tempOut43;
wire [31 : 0] tempOut44;
wire [31 : 0] tempOut45;
wire [31 : 0] tempOut46;
wire [31 : 0] tempOut47;
wire [31 : 0] tempOut48;
wire [31 : 0] tempOut49;
wire [31 : 0] tempOut50;
wire [31 : 0] tempOut51;
wire [31 : 0] tempOut52;
wire [31 : 0] tempOut53;
wire [31 : 0] tempOut54;
wire [31 : 0] tempOut55;
wire [31 : 0] tempOut56;
wire [31 : 0] tempOut57;
wire [31 : 0] tempOut58;
wire [31 : 0] tempOut59;
wire [31 : 0] tempOut60;
wire [31 : 0] tempOut61;
wire [31 : 0] tempOut62;
wire [31 : 0] tempOut63;
wire [31 : 0] tempOut64;
wire [31 : 0] tempOut65;
wire [31 : 0] tempOut66;
wire [31 : 0] tempOut67;
wire [31 : 0] tempOut68;
wire [31 : 0] tempOut69;
wire [31 : 0] tempOut70;
wire [31 : 0] tempOut71;
wire [31 : 0] tempOut72;
wire [31 : 0] tempOut73;
wire [31 : 0] tempOut74;
wire [31 : 0] tempOut75;
wire [31 : 0] tempOut76;
wire [31 : 0] tempOut77;
wire [31 : 0] tempOut78;
wire [31 : 0] tempOut79;

/*
always @(*)
begin
$display("tempOut0: %h\n\ntempOut1: %h\n\ntempOut2: %h\n\nw: %h\n\n", tempOut0, tempOut1, tempOut2, w);

end

*/

//genvar i;
generate
if(Nk == 4)
begin
//Nk = 4
RotWord uut0 (.in(w[1311 -: 32]), .out(tempOut0));
SubWord uut1 (.stateIn(tempOut0), .stateOut(tempOut1));
Rcon uut2 (.in(4'd1), .out(tempOut2));
assign w[1279 -: 32] = w[1407 -: 32] ^ tempOut1 ^ tempOut2;

assign w[1247 -: 32] = w[1375 -: 32] ^ w[1279 -: 32];
assign w[1215 -: 32] = w[1343 -: 32] ^ w[1247 -: 32];
assign w[1183 -: 32] = w[1311 -: 32] ^ w[1215 -: 32];

RotWord uut4 (.in(w[1183 -: 32]), .out(tempOut4));
SubWord uut5 (.stateIn(tempOut4), .stateOut(tempOut5));
Rcon uut6 (.in(4'd2), .out(tempOut6));
assign w[1151 -: 32] = w[1279 -: 32] ^ tempOut5 ^ tempOut6;
assign w[1119 -: 32] = w[1247 -: 32] ^ w[1151 -: 32];
assign w[1087 -: 32] = w[1215 -: 32] ^ w[1119 -: 32];
assign w[1055 -: 32] = w[1183 -: 32] ^ w[1087 -: 32];
RotWord uut8 (.in(w[1055 -: 32]), .out(tempOut8));
SubWord uut9 (.stateIn(tempOut8), .stateOut(tempOut9));
Rcon uut10 (.in(4'd3), .out(tempOut10));
assign w[1023 -: 32] = w[1151 -: 32] ^ tempOut9 ^ tempOut10;
assign w[991 -: 32] = w[1119 -: 32] ^ w[1023 -: 32];
assign w[959 -: 32] = w[1087 -: 32] ^ w[991 -: 32];
assign w[927 -: 32] = w[1055 -: 32] ^ w[959 -: 32];
RotWord uut12 (.in(w[927 -: 32]), .out(tempOut12));
SubWord uut13 (.stateIn(tempOut12), .stateOut(tempOut13));
Rcon uut14 (.in(4'd4), .out(tempOut14));
assign w[895 -: 32] = w[1023 -: 32] ^ tempOut13 ^ tempOut14;
assign w[863 -: 32] = w[991 -: 32] ^ w[895 -: 32];
assign w[831 -: 32] = w[959 -: 32] ^ w[863 -: 32];
assign w[799 -: 32] = w[927 -: 32] ^ w[831 -: 32];
RotWord uut16 (.in(w[799 -: 32]), .out(tempOut16));
SubWord uut17 (.stateIn(tempOut16), .stateOut(tempOut17));
Rcon uut18 (.in(4'd5), .out(tempOut18));
assign w[767 -: 32] = w[895 -: 32] ^ tempOut17 ^ tempOut18;
assign w[735 -: 32] = w[863 -: 32] ^ w[767 -: 32];
assign w[703 -: 32] = w[831 -: 32] ^ w[735 -: 32];
assign w[671 -: 32] = w[799 -: 32] ^ w[703 -: 32];
RotWord uut20 (.in(w[671 -: 32]), .out(tempOut20));
SubWord uut21 (.stateIn(tempOut20), .stateOut(tempOut21));
Rcon uut22 (.in(4'd6), .out(tempOut22));
assign w[639 -: 32] = w[767 -: 32] ^ tempOut21 ^ tempOut22;
assign w[607 -: 32] = w[735 -: 32] ^ w[639 -: 32];
assign w[575 -: 32] = w[703 -: 32] ^ w[607 -: 32];
assign w[543 -: 32] = w[671 -: 32] ^ w[575 -: 32];
RotWord uut24 (.in(w[543 -: 32]), .out(tempOut24));
SubWord uut25 (.stateIn(tempOut24), .stateOut(tempOut25));
Rcon uut26 (.in(4'd7), .out(tempOut26));
assign w[511 -: 32] = w[639 -: 32] ^ tempOut25 ^ tempOut26;
assign w[479 -: 32] = w[607 -: 32] ^ w[511 -: 32];
assign w[447 -: 32] = w[575 -: 32] ^ w[479 -: 32];
assign w[415 -: 32] = w[543 -: 32] ^ w[447 -: 32];

RotWord uut28 (.in(w[415 -: 32]), .out(tempOut28));
SubWord uut29 (.stateIn(tempOut28), .stateOut(tempOut29));
Rcon uut30 (.in(4'd8), .out(tempOut30));
assign w[383 -: 32] = w[511 -: 32] ^ tempOut29 ^ tempOut30;

assign w[351 -: 32] = w[479 -: 32] ^ w[383 -: 32];
assign w[319 -: 32] = w[447 -: 32] ^ w[351 -: 32];
assign w[287 -: 32] = w[415 -: 32] ^ w[319 -: 32];
RotWord uut32 (.in(w[287 -: 32]), .out(tempOut32));
SubWord uut33 (.stateIn(tempOut32), .stateOut(tempOut33));
Rcon uut34 (.in(4'd9), .out(tempOut34));
assign w[255 -: 32] = w[383 -: 32] ^ tempOut33 ^ tempOut34;
assign w[223 -: 32] = w[351 -: 32] ^ w[255 -: 32];
assign w[191 -: 32] = w[319 -: 32] ^ w[223 -: 32];
assign w[159 -: 32] = w[287 -: 32] ^ w[191 -: 32];
RotWord uut36 (.in(w[159 -: 32]), .out(tempOut36));
SubWord uut37 (.stateIn(tempOut36), .stateOut(tempOut37));
Rcon uut38 (.in(4'd10), .out(tempOut38));
assign w[127 -: 32] = w[255 -: 32] ^ tempOut37 ^ tempOut38;
assign w[95 -: 32] = w[223 -: 32] ^ w[127 -: 32];
assign w[63 -: 32] = w[191 -: 32] ^ w[95 -: 32];
assign w[31 -: 32] = w[159 -: 32] ^ w[63 -: 32];
end


//Nk = 6
else if(Nk == 6)
begin
RotWord uut0 (.in(w[1503 -: 32]), .out(tempOut0));
SubWord uut1 (.stateIn(tempOut0), .stateOut(tempOut1));
Rcon uut2 (.in(4'd1), .out(tempOut2));
assign w[1471 -: 32] = w[1663 -: 32] ^ tempOut1 ^ tempOut2;
assign w[1439 -: 32] = w[1631 -: 32] ^ w[1471 -: 32];
assign w[1407 -: 32] = w[1599 -: 32] ^ w[1439 -: 32];
assign w[1375 -: 32] = w[1567 -: 32] ^ w[1407 -: 32];
assign w[1343 -: 32] = w[1535 -: 32] ^ w[1375 -: 32];
assign w[1311 -: 32] = w[1503 -: 32] ^ w[1343 -: 32];
RotWord uut6 (.in(w[1311 -: 32]), .out(tempOut6));
SubWord uut7 (.stateIn(tempOut6), .stateOut(tempOut7));
Rcon uut8 (.in(4'd2), .out(tempOut8));
assign w[1279 -: 32] = w[1471 -: 32] ^ tempOut7 ^ tempOut8;
assign w[1247 -: 32] = w[1439 -: 32] ^ w[1279 -: 32];
assign w[1215 -: 32] = w[1407 -: 32] ^ w[1247 -: 32];
assign w[1183 -: 32] = w[1375 -: 32] ^ w[1215 -: 32];
assign w[1151 -: 32] = w[1343 -: 32] ^ w[1183 -: 32];
assign w[1119 -: 32] = w[1311 -: 32] ^ w[1151 -: 32];
RotWord uut12 (.in(w[1119 -: 32]), .out(tempOut12));
SubWord uut13 (.stateIn(tempOut12), .stateOut(tempOut13));
Rcon uut14 (.in(4'd3), .out(tempOut14));
assign w[1087 -: 32] = w[1279 -: 32] ^ tempOut13 ^ tempOut14;
assign w[1055 -: 32] = w[1247 -: 32] ^ w[1087 -: 32];
assign w[1023 -: 32] = w[1215 -: 32] ^ w[1055 -: 32];
assign w[991 -: 32] = w[1183 -: 32] ^ w[1023 -: 32];
assign w[959 -: 32] = w[1151 -: 32] ^ w[991 -: 32];
assign w[927 -: 32] = w[1119 -: 32] ^ w[959 -: 32];
RotWord uut18 (.in(w[927 -: 32]), .out(tempOut18));
SubWord uut19 (.stateIn(tempOut18), .stateOut(tempOut19));
Rcon uut20 (.in(4'd4), .out(tempOut20));
assign w[895 -: 32] = w[1087 -: 32] ^ tempOut19 ^ tempOut20;
assign w[863 -: 32] = w[1055 -: 32] ^ w[895 -: 32];
assign w[831 -: 32] = w[1023 -: 32] ^ w[863 -: 32];
assign w[799 -: 32] = w[991 -: 32] ^ w[831 -: 32];
assign w[767 -: 32] = w[959 -: 32] ^ w[799 -: 32];
assign w[735 -: 32] = w[927 -: 32] ^ w[767 -: 32];
RotWord uut24 (.in(w[735 -: 32]), .out(tempOut24));
SubWord uut25 (.stateIn(tempOut24), .stateOut(tempOut25));
Rcon uut26 (.in(4'd5), .out(tempOut26));
assign w[703 -: 32] = w[895 -: 32] ^ tempOut25 ^ tempOut26;
assign w[671 -: 32] = w[863 -: 32] ^ w[703 -: 32];
assign w[639 -: 32] = w[831 -: 32] ^ w[671 -: 32];
assign w[607 -: 32] = w[799 -: 32] ^ w[639 -: 32];
assign w[575 -: 32] = w[767 -: 32] ^ w[607 -: 32];
assign w[543 -: 32] = w[735 -: 32] ^ w[575 -: 32];
RotWord uut30 (.in(w[543 -: 32]), .out(tempOut30));
SubWord uut31 (.stateIn(tempOut30), .stateOut(tempOut31));
Rcon uut32 (.in(4'd6), .out(tempOut32));
assign w[511 -: 32] = w[703 -: 32] ^ tempOut31 ^ tempOut32;
assign w[479 -: 32] = w[671 -: 32] ^ w[511 -: 32];
assign w[447 -: 32] = w[639 -: 32] ^ w[479 -: 32];
assign w[415 -: 32] = w[607 -: 32] ^ w[447 -: 32];
assign w[383 -: 32] = w[575 -: 32] ^ w[415 -: 32];
assign w[351 -: 32] = w[543 -: 32] ^ w[383 -: 32];
RotWord uut36 (.in(w[351 -: 32]), .out(tempOut36));
SubWord uut37 (.stateIn(tempOut36), .stateOut(tempOut37));
Rcon uut38 (.in(4'd7), .out(tempOut38));
assign w[319 -: 32] = w[511 -: 32] ^ tempOut37 ^ tempOut38;
assign w[287 -: 32] = w[479 -: 32] ^ w[319 -: 32];
assign w[255 -: 32] = w[447 -: 32] ^ w[287 -: 32];
assign w[223 -: 32] = w[415 -: 32] ^ w[255 -: 32];
assign w[191 -: 32] = w[383 -: 32] ^ w[223 -: 32];
assign w[159 -: 32] = w[351 -: 32] ^ w[191 -: 32];
RotWord uut42 (.in(w[159 -: 32]), .out(tempOut42));
SubWord uut43 (.stateIn(tempOut42), .stateOut(tempOut43));
Rcon uut44 (.in(4'd8), .out(tempOut44));
assign w[127 -: 32] = w[319 -: 32] ^ tempOut43 ^ tempOut44;
assign w[95 -: 32] = w[287 -: 32] ^ w[127 -: 32];
assign w[63 -: 32] = w[255 -: 32] ^ w[95 -: 32];
assign w[31 -: 32] = w[223 -: 32] ^ w[63 -: 32];
end

//Nk = 8
else if(Nk == 8)
begin
RotWord uut0 (.in(w[1695 -: 32]), .out(tempOut0));
SubWord uut1 (.stateIn(tempOut0), .stateOut(tempOut1));
Rcon uut2 (.in(4'd1), .out(tempOut2));
assign w[1663 -: 32] = w[1919 -: 32] ^ tempOut1 ^ tempOut2;
assign w[1631 -: 32] = w[1887 -: 32] ^ w[1663 -: 32];
assign w[1599 -: 32] = w[1855 -: 32] ^ w[1631 -: 32];
assign w[1567 -: 32] = w[1823 -: 32] ^ w[1599 -: 32];
SubWord uut4 (.stateIn(w[1567 -: 32]), .stateOut(tempOut4));
assign w[1535 -: 32] = w[1791 -: 32] ^ tempOut4;
assign w[1503 -: 32] = w[1759 -: 32] ^ w[1535 -: 32];
assign w[1471 -: 32] = w[1727 -: 32] ^ w[1503 -: 32];
assign w[1439 -: 32] = w[1695 -: 32] ^ w[1471 -: 32];
RotWord uut8 (.in(w[1439 -: 32]), .out(tempOut8));
SubWord uut9 (.stateIn(tempOut8), .stateOut(tempOut9));
Rcon uut10 (.in(4'd2), .out(tempOut10));
assign w[1407 -: 32] = w[1663 -: 32] ^ tempOut9 ^ tempOut10;
assign w[1375 -: 32] = w[1631 -: 32] ^ w[1407 -: 32];
assign w[1343 -: 32] = w[1599 -: 32] ^ w[1375 -: 32];
assign w[1311 -: 32] = w[1567 -: 32] ^ w[1343 -: 32];
SubWord uut12 (.stateIn(w[1311 -: 32]), .stateOut(tempOut12));
assign w[1279 -: 32] = w[1535 -: 32] ^ tempOut12;
assign w[1247 -: 32] = w[1503 -: 32] ^ w[1279 -: 32];
assign w[1215 -: 32] = w[1471 -: 32] ^ w[1247 -: 32];
assign w[1183 -: 32] = w[1439 -: 32] ^ w[1215 -: 32];
RotWord uut16 (.in(w[1183 -: 32]), .out(tempOut16));
SubWord uut17 (.stateIn(tempOut16), .stateOut(tempOut17));
Rcon uut18 (.in(4'd3), .out(tempOut18));
assign w[1151 -: 32] = w[1407 -: 32] ^ tempOut17 ^ tempOut18;
assign w[1119 -: 32] = w[1375 -: 32] ^ w[1151 -: 32];
assign w[1087 -: 32] = w[1343 -: 32] ^ w[1119 -: 32];
assign w[1055 -: 32] = w[1311 -: 32] ^ w[1087 -: 32];
SubWord uut20 (.stateIn(w[1055 -: 32]), .stateOut(tempOut20));
assign w[1023 -: 32] = w[1279 -: 32] ^ tempOut20;
assign w[991 -: 32] = w[1247 -: 32] ^ w[1023 -: 32];
assign w[959 -: 32] = w[1215 -: 32] ^ w[991 -: 32];
assign w[927 -: 32] = w[1183 -: 32] ^ w[959 -: 32];
RotWord uut24 (.in(w[927 -: 32]), .out(tempOut24));
SubWord uut25 (.stateIn(tempOut24), .stateOut(tempOut25));
Rcon uut26 (.in(4'd4), .out(tempOut26));
assign w[895 -: 32] = w[1151 -: 32] ^ tempOut25 ^ tempOut26;
assign w[863 -: 32] = w[1119 -: 32] ^ w[895 -: 32];
assign w[831 -: 32] = w[1087 -: 32] ^ w[863 -: 32];
assign w[799 -: 32] = w[1055 -: 32] ^ w[831 -: 32];
SubWord uut28 (.stateIn(w[799 -: 32]), .stateOut(tempOut28));
assign w[767 -: 32] = w[1023 -: 32] ^ tempOut28;
assign w[735 -: 32] = w[991 -: 32] ^ w[767 -: 32];
assign w[703 -: 32] = w[959 -: 32] ^ w[735 -: 32];
assign w[671 -: 32] = w[927 -: 32] ^ w[703 -: 32];
RotWord uut32 (.in(w[671 -: 32]), .out(tempOut32));
SubWord uut33 (.stateIn(tempOut32), .stateOut(tempOut33));
Rcon uut34 (.in(4'd5), .out(tempOut34));
assign w[639 -: 32] = w[895 -: 32] ^ tempOut33 ^ tempOut34;
assign w[607 -: 32] = w[863 -: 32] ^ w[639 -: 32];
assign w[575 -: 32] = w[831 -: 32] ^ w[607 -: 32];
assign w[543 -: 32] = w[799 -: 32] ^ w[575 -: 32];
SubWord uut36 (.stateIn(w[543 -: 32]), .stateOut(tempOut36));
assign w[511 -: 32] = w[767 -: 32] ^ tempOut36;
assign w[479 -: 32] = w[735 -: 32] ^ w[511 -: 32];
assign w[447 -: 32] = w[703 -: 32] ^ w[479 -: 32];
assign w[415 -: 32] = w[671 -: 32] ^ w[447 -: 32];
RotWord uut40 (.in(w[415 -: 32]), .out(tempOut40));
SubWord uut41 (.stateIn(tempOut40), .stateOut(tempOut41));
Rcon uut42 (.in(4'd6), .out(tempOut42));
assign w[383 -: 32] = w[639 -: 32] ^ tempOut41 ^ tempOut42;
assign w[351 -: 32] = w[607 -: 32] ^ w[383 -: 32];
assign w[319 -: 32] = w[575 -: 32] ^ w[351 -: 32];
assign w[287 -: 32] = w[543 -: 32] ^ w[319 -: 32];
SubWord uut44 (.stateIn(w[287 -: 32]), .stateOut(tempOut44));
assign w[255 -: 32] = w[511 -: 32] ^ tempOut44;
assign w[223 -: 32] = w[479 -: 32] ^ w[255 -: 32];
assign w[191 -: 32] = w[447 -: 32] ^ w[223 -: 32];
assign w[159 -: 32] = w[415 -: 32] ^ w[191 -: 32];
RotWord uut48 (.in(w[159 -: 32]), .out(tempOut48));
SubWord uut49 (.stateIn(tempOut48), .stateOut(tempOut49));
Rcon uut50 (.in(4'd7), .out(tempOut50));
assign w[127 -: 32] = w[383 -: 32] ^ tempOut49 ^ tempOut50;
assign w[95 -: 32] = w[351 -: 32] ^ w[127 -: 32];
assign w[63 -: 32] = w[319 -: 32] ^ w[95 -: 32];
assign w[31 -: 32] = w[287 -: 32] ^ w[63 -: 32];
end
endgenerate


integer i;
/*
initial
begin
#30;
for(i = 4 * (6 + Nk + 1) * 32 ; i > 0 ; i = i- 32)
begin
$display("%h\n\n", w[i - 1 -: 32]);
//$display("tempOut0: %h\n\ntempOut1: %h\n\ntempOut2: %h\n\nw: %h\n\n", tempOut0, tempOut1, tempOut2, w);
end

//$display("\n\n\n\%h\n\n%h\n\n%h\n\n%h\n\n", w[383 -: 32], tempOut28, tempOut29, tempOut30);
end
*/
endmodule

module tb;

parameter Nk = 6;
reg [32 * Nk - 1 : 0] in;
wire [4 * (6 + Nk + 1) * 32 - 1 : 0] out;

KeyExpansion #(.Nk(Nk)) uut (.Key(in), .w(out));


initial 
begin
in = 'h8e73b0f7da0e6452c810f32b809079e562f8ead2522c6b7b;

#30;

//$display("out: %h\n\n", out);
$stop;

end

endmodule




  