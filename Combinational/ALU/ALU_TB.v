`timescale 1ns / 1ps  

module ALU_TB;

 reg[7:0] A,B;
 reg[3:0] ALU_Sel;


 wire[7:0] ALU_Out;
 wire CarryOut;
 
 integer i;
 ALU test_unit(
            A,B,               
            ALU_Sel,
            ALU_Out, 
            CarryOut 
     );
    initial begin
  
      A = 5;
      B = 2;
      ALU_Sel = 0;
      
      for (i=0;i<=15;i=i+1)
      begin
       ALU_Sel = ALU_Sel + 1;
       #10;
      end;
      
    
    end
endmodule
