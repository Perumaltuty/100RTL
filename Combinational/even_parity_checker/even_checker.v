`timescale 1ns / 1ps
module even_parity_checker( input a,b,c,P, output out);
  assign out=((a^b)^(c^P));
endmodule
