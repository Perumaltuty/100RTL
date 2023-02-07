`timescale 1ns / 1ps
module JK_latch(input J, input K, input clk, output reg Q);
  always @(posedge clk)
    if (J == 1 && K == 0)
      Q <= 1;
    else if (J == 0 && K == 1)
      Q <= 0;
endmodule
