`timescale 1ns / 1ps
module RAM_TB;
reg [7:0]data_in;
reg [5:0] address;
reg write_enable;
reg clk;
wire [7:0]data_out;
RAM tb(data_in , address,write_enable,clk,data_out);
initial begin
clk =1'b1;
forever #10 clk=~clk;
end
initial
begin
write_enable =1'b1;
#20;
address=5'd0;
data_in = 8'h10;
#20;
address=5'd2;
data_in = 8'h11;
#20;
address=5'd7;
data_in = 8'haf;
#20;
write_enable = 1'b0;
address=5'd0;
#20;
address=5'd2;
#20;
address=5'd7;
#20;
$finish;
end
endmodule
