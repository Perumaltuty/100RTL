`timescale 1ns / 1ps
module priority_encoder_tb;
  reg [7:0] D;
  wire [2:0] y;
  
  priority_encoder pri_enc(D, y);
  
  initial begin
    $monitor("D = %b -> y = %0b", D, y);
    repeat(5) begin
      D=$random; #1;
    end
  end
endmodule
