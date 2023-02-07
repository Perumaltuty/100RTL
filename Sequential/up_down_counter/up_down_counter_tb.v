`timescale 1ns / 1ps
module up_down_counter_tb;
  reg clk, rst, up_down, load;
  reg [7:0] count_in;
  wire [7:0] count_out;
  up_down_counter UUT(clk, rst, up_down, load, count_in, count_out);

  initial begin

    clk = 0;
    rst = 1;
    up_down = 1;
    load = 0;
    count_in = 0;

    #100;

    rst = 0;
    up_down = 1;
    load = 1;
    count_in = 8'b10010010;
    #100;
    up_down = 1;
    load = 0;
    #100;
    up_down = 0;
    #100;
    up_down = 0;
    #100;
    up_down = 1;
    #100;

    #200;
  end

  always #50 clk = ~clk;
endmodule
