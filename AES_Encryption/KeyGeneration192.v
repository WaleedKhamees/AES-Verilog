
module KeyGeneration192(rc,key,keyout);
    
   input [3:0] rc;
   input [191:0]key;
   output [191:0] keyout;
   
   wire [31:0] w0,w1,w2,w3,w4,w5,tem;
                
					 
		 assign w0 = key[191:160];			 
       assign w1 = key[159:128];
       assign w2 = key[127:96];
       assign w3 = key[95:64];
       assign w4 = key[63:32];
       assign w5 = key[31:0];
       
       
       assign keyout[191:160]= w0 ^ tem ^ rcon(rc);
       assign keyout[159:128] = w0 ^ tem ^ rcon(rc)^ w1;
       assign keyout[127:96] = w0 ^ tem ^ rcon(rc)^ w1 ^ w2;
       assign keyout[95:64]  = w0 ^ tem ^ rcon(rc)^ w1 ^ w2 ^ w3;
       assign keyout[63:32]  = w0 ^ tem ^ rcon(rc)^ w1 ^ w2 ^ w3 ^ w4;
       assign keyout[31:0]  = w0 ^ tem ^ rcon(rc)^ w1 ^ w2 ^ w3 ^ w4 ^ w5;
		 

       
       sbox a1(.a(w5[23:16]),.c(tem[31:24]));
       sbox a2(.a(w5[15:8]),.c(tem[23:16]));
       sbox a3(.a(w5[7:0]),.c(tem[15:8]));
       sbox a4(.a(w5[31:24]),.c(tem[7:0]));
       
       
       
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