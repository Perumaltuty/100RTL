`timescale 1ns / 1ps

module D_Fliop_Flop_Tb;
reg clk = 0;
reg reset = 0;
reg D_in;
wire Q_out;
D_Flip_flop ff(.clk(clk),.reset(reset),.D_in(D_in),.Q_out(Q_out));
always #5 clk = ~clk;
always #50 reset = ~reset;
initial begin
repeat(50)
#5 
D_in = $random;
$display("clk=%0b,reset=%0b,D_in=%0d,Q_out=%d",clk,reset,D_in,Q_out);
#500
$finish;
end
endmodule
