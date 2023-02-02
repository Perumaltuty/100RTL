`timescale 1ns / 1ps
module demux_2_4(
  input sel,
  input in,
  output [3:0] out
);
  assign out[0] = (sel == 0) ? in : 1'b0;
  assign out[1] = (sel == 1) ? in : 1'b0;
  assign out[2] = (sel == 2) ? in : 1'b0;
  assign out[3] = (sel == 3) ? in : 1'b0;
endmodule

