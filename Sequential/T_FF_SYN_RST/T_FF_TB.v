`timescale 1ns / 1ps
module tff_sync_reset_tb;
reg data, clk, reset ;
wire q;
tff_sync_reset tb (.data(data), .clk(clk), .reset(reset) ,.q(q));
initial
begin
clk=0;
data = 0;
reset = 1;
#5 reset = 0;
#30 reset = 1;
$monitor($time, "\tclk=%b\t ,reset=%b\t, data=%b\t, q=%b",clk,reset,data,q);
#100 $finish;
end
always #5 clk = ~clk;
always #30 data = ~data;
endmodule
