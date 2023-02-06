`timescale 1ns / 1ps
module odd_paroty_checker (input a,b,c,P, output out);
  assign out=~((~(a^b))^(~(c^P)));
endmodule
