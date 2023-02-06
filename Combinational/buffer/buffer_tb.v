`timescale 1ns / 1ps
module buffer_tb;
	reg a;
	wire y;
	buffer tb(a,y);
	initial
	begin
		$display ("RESULT\ta\ty");
    a = 0; # 100; 
		if ( y == 0 )
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);
    a = 1; # 100; 
		if ( y == 1 ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);
	end
 endmodule
