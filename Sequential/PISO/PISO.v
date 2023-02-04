`timescale 1ns / 1ps
module PISO(clk,rst,d,q);
  
input clk,rst;
  input [3:0]d;
output reg q;
 reg [3:0]temp=0;
  
  
  always@(posedge clk,posedge rst) begin
    if(rst == 1)begin
		q <= 0;
	//	temp <= d;
	end else begin
		q <= d[temp];
		if(temp == 3) 
		  temp=0;
		else
		  temp <= temp + 1;
	end
end
endmodule
