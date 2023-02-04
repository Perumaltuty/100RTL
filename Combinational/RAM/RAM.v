`timescale 1ns / 1ps
module RAM(data_in , address,write_enable,clk,data_out);
input [7:0]data_in;
input [5:0] address;
input write_enable;
input clk;
output [7:0]data_out;

reg [7:0] ram_memory[31:0]; 
reg [5:0] address_register;

always @(posedge clk)
begin
if (write_enable)  
  ram_memory[address] <= data_in;
else 
  address_register <= address;
end

assign data_out = ram_memory[address_register];

endmodule
