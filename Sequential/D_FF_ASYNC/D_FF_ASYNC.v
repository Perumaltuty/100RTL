`timescale 1ns / 1ps
module D_FF_ASYNC (
  input clk, rst,
  input d,
  output reg q
  );
  
  always@(posedge clk or negedge rst) begin
    if(!rst) q <= 0;
    else       q <= d;
  end
  
endmodule
