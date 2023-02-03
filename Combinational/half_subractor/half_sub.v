`timescale 1ns / 1ps
module half_sub(input a, b, output D, B);
  assign D = a ^ b;
  assign B = ~a & b;
endmodule
