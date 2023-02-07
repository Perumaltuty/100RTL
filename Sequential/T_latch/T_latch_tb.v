`timescale 1ns / 1ps
module T_latch_tb;
  reg T, clk;
  wire Q;
  T_latch UUT(T, clk, Q);

  initial begin
    // Initialize input values
    T = 0;
    clk = 0;
    #100;
    T = 1;
    #100;
    T = 0;
    #100;
    T = 1;
    #100;
    #200;
  end

  always #50 clk = ~clk;
endmodule
