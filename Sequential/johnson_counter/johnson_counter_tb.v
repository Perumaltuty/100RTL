`timescale 1ns / 1ps
module johnson_counter_tb;

reg clk = 0, reset;
wire [3:0] q;

johnson_counter dut (
  .clk(clk),
  .reset(reset),
  .q(q)
);

parameter clk_period = 10;

always #(clk_period/2) clk = ~clk;

initial begin
  reset = 1;
  #10 reset = 0;
 
end

initial begin
  #20 $display("Time\tq\tExpected");
  #20 $monitor("%0d\t%b\t%b", $time, q, 4'b0001);
  #80 $monitor("%0d\t%b\t%b", $time, q, 4'b0010);
  #80 $monitor("%0d\t%b\t%b", $time, q, 4'b0100);
  #80 $monitor("%0d\t%b\t%b", $time, q, 4'b1000);
  #80 $monitor("%0d\t%b\t%b", $time, q, 4'b0001);
  #80 $finish;
end

endmodule

