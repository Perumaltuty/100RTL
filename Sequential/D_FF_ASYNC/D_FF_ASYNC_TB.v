`timescale 1ns / 1ps
module D_FF_SYNC_TB;
  reg clk, rst;
  reg d;
  wire q;
  
  D_fF_ASYNC dff(clk, rst, d, q);
  always #2 clk = ~clk;
  initial begin
    clk = 0; rst = 0;
    d = 0;
    #3 rst = 1;
  repeat(6) begin
      d = 0;
      #3;
    end
    rst = 0; #3;
    rst = 1;
    repeat(6) begin
      d = 1;
      #3;
    end
    $finish;
  end
endmodule
