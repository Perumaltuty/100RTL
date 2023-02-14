module alarm_tb;

reg a,b,c,d;
wire o;

alarm uut(.a(a), .b(b),
	.c(c), .d(d), .o(o));

initial 
begin
	a = 1'b0;
	b = 1'b0;
	c = 1'b0;
	d = 1'b0;

	#10 a = a + 1'b1;
	 #20 b = b + 1'b1;
	 #30 c = c + 1'b1;
 #10 d = d + 1'b1;
end

 
initial #100 $finish;

endmodule
