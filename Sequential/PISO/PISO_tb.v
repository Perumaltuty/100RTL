`timescale 1ns / 1ps


module PISO_tb;

reg clk, rst;
reg [3:0]d;
wire [3:0]q;

PISO tb(.clk(clk), .rst(rst), .d(d), .q(q));

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  rst = 1;
  #10 rst = 0;
  d = 4'b1010;
  #40 $display("d = %b, q = %b", d, q);
  d = 4'b0101;
  #40 $display("d = %b, q = %b", d, q);
  d = 4'b0000;
  #40 $display("d = %b, q = %b", d, q);
  $finish;
end

endmodule

