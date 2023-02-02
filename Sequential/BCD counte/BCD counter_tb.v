`timescale 1ns / 1ps
module bcd_counter_tb;

reg clk, reset;
wire [3:0] bcd;

bcd_counter dut (
  .clk(clk),
  .reset(reset),
  .bcd(bcd)
);

parameter clk_period = 10;

always #5 clk = ~clk;

initial begin
  clk =0;
  reset = 1;
  #10 reset = 0;
end

initial begin
  #20 $display("Time\tbcd\tExpected");
  #20 $monitor("%0d\t%b\t%b", $time, bcd, 4'b0000);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b0001);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b0010);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b0011);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b0100);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b0101);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b0110);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b0111);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b1000);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b1001);
  #80 $monitor("%0d\t%b\t%b", $time, bcd, 4'b0000);
  #80 $finish;
end

endmodule
