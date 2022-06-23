
module KeyGeneration256(rc,key,keyout);
    
   input [3:0] rc;
   input [255:0]key;
   output [255:0] keyout;
   
   wire [31:0] w0,w1,w2,w3,w4,w5,w6,w7,tem,temp1, temp2;
                
		 assign w0 = key[255:224];			 
		 assign w1 = key[223:192];			 		 
		 assign w2 = key[191:160];			 
       assign w3 = key[159:128];
       assign w4 = key[127:96];
       assign w5 = key[95:64];
       assign w6 = key[63:32];
       assign w7 = key[31:0];
       
		 assign temp1 = w0 ^ tem ^ rcon(rc)^ w1 ^ w2 ^ w3;
       
       assign keyout[255:224]= w0 ^ tem ^ rcon(rc);
       assign keyout[223:192] = w0 ^ tem ^ rcon(rc)^ w1;
       assign keyout[191:160] = w0 ^ tem ^ rcon(rc)^ w1 ^ w2;
       assign keyout[159:128]  = w0 ^ tem ^ rcon(rc)^ w1 ^ w2 ^ w3;
       assign keyout[127:96]  = temp2 ^ w4 ;
       assign keyout[95:64]  = temp2 ^ w4 ^ w5;
       assign keyout[63:32]  = temp2 ^ w4 ^ w5 ^ w6;
       assign keyout[31:0]  = temp2 ^ w4 ^ w5 ^ w6 ^ w7;

       
       sbox a1(.a(w7[23:16]),.c(tem[31:24]));
       sbox a2(.a(w7[15:8]),.c(tem[23:16]));
       sbox a3(.a(w7[7:0]),.c(tem[15:8]));
       sbox a4(.a(w7[31:24]),.c(tem[7:0]));
		 
		 sbox a5(.a(temp1[31:24]),.c(temp2[31:24]));
		 sbox a6(.a(temp1[23:16]),.c(temp2[23:16]));
		 sbox a7(.a(temp1[15:8]),.c(temp2[15:8]));
		 sbox a8(.a(temp1[7:0]),.c(temp2[7:0]));

       
       
       
     function [31:0]	rcon;
      input	[3:0]	rc;
      case(rc)	
         4'h0: rcon=32'h01_00_00_00;
         4'h1: rcon=32'h02_00_00_00;
         4'h2: rcon=32'h04_00_00_00;
         4'h3: rcon=32'h08_00_00_00;
         4'h4: rcon=32'h10_00_00_00;
         4'h5: rcon=32'h20_00_00_00;
         4'h6: rcon=32'h40_00_00_00;
         4'h7: rcon=32'h80_00_00_00;
         4'h8: rcon=32'h1b_00_00_00;
         4'h9: rcon=32'h36_00_00_00;
         default: rcon=32'h00_00_00_00;
       endcase

     endfunction

endmodule

