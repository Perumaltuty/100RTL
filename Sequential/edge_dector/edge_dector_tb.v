`timescale 1ns / 1ps
module edge_dector_tb;
	reg data;
	reg clock;
	
	edge_detector uut (
		.data(data), 
		.clock(clock), 
		.edge_detect(edge_detect)
	);

	initial begin

		data = 0;
		clock = 0;
		#15 data = 1;
		#10 data= 0;
		#15 data = 1;
		#10 data = 0;
		#15 data = 1;
		#10 data= 0;
		#15 data = 1;
		#10 data = 0;
    end
	

	always #5 clock=~clock;
	
	initial begin
	$monitor("Data =%b, Edge_detect=%b ", data,edge_detect);
	#200 $finish;
	end
      
endmodule
