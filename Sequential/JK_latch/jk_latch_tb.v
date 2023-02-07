`timescale 1ns / 1ps
module JK_latch_tb;
  reg J, K, clk;
  wire Q;
  JK_latch tb(J, K, clk, Q);

  initial begin
    // Initialize input values
    J = 0;
    K = 0;
    clk = 0;

    // Wait for 100 ns
    #100;

    // Apply test vectors
    J = 1; K = 0;
    #100;
    J = 0; K = 1;
    #100;
    J = 1; K = 0;
    #100;

    // Wait for 200 ns to observe the final output
    #200;
  end

  always #50 clk = ~clk;
endmodule
