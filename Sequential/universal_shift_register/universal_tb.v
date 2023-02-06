`timescale 1ns / 1ps
module universal_tb;
  reg clk, rst;
  reg [1:0] mode;
  reg [3:0] in;
  wire [3:0] out;

  universal_shift_register tb (out, clk, rst, mode, in);

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1;
    mode = 2'b00;
    in = 4'b0001;
    #10 rst = 0;
    #10 mode = 2'b01;
    #10 in = 4'b0010;
    #10 mode = 2'b10;
    #10 in = 4'b0100;
    #10 mode = 2'b11;
    #10 in = 4'b1000;
    #10 $finish;
  end
endmodule
