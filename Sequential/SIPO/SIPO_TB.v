`timescale 1ns / 1ps
module SIPO_TB;
reg clk;
reg clear;
reg si;
wire [3:0] po;
SIPO uut (.clk(clk),.clear(clear),   .si(si),.po(po) );
initial begin
clk = 0;
clear = 0;
si = 0;
#5 clear=1'b1;
#5 clear=1'b0;
#10 si=1'b1;
#10 si=1'b0;
#10 si=1'b0;
#10 si=1'b1;
#10 si=1'b0;
#10 si=1'bx;
end
always #5 clk = ~clk;
initial #150 $finish;
endmodule
