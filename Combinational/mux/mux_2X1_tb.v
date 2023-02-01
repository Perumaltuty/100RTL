`timescale 1ns / 1ps

module mux_2X1_TB;
reg [7:0] a = 0;
reg [7:0] b = 0;
reg sel = 0;
wire [7:0] c;

mux_2X1 mux(.a(a),.b(b),.c(c),.sel(sel));

initial begin

repeat(10)
begin
a= $random;
b= $random;
 #10sel = ~sel;
 $display("a=%0d,b=%0d,c=%0d,sel=%0b",a,b,c,sel);
if((sel==0)&&(c==a)||(sel==1)&&(c==b)) 
$display("PASS");
else
$display("FAIL");
end
end



endmodule
