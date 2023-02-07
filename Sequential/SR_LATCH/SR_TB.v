`timescale 1ns / 1ps

module SR_Latch_tb;
  reg S, R, En;
  wire Q, Qc;

  SR_Latch dut (S, R, En, Q, Qc);

  initial begin
    S = 0; R = 0; En = 1;
    #5 S = 1; R = 0;
    #5 S = 0; R = 1;
    #5 S = 1; R = 1;
    #5 $finish;
  end

endmodule
