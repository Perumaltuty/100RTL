`timescale 1ns / 1ps
module T_latch(input T, input clk, output reg Q);
  always @(posedge clk)
    Q <= T;
endmodule
