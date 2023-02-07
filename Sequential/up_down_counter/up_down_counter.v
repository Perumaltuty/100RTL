`timescale 1ns / 1ps
module up_down_counter(input clk, input rst, input up_down, input load, input [7:0] count_in, output reg [7:0] count_out);
  always @(posedge clk) begin
    if (rst)
      count_out <= 8'b0;
    else if (load)
      count_out <= count_in;
    else if (up_down)
      count_out <= count_out + 1;
    else
      count_out <= count_out - 1;
  end
endmodule
