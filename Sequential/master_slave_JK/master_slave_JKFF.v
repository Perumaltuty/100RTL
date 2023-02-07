`timescale 1ns / 1ps
module master_slave_JKFF (s,r,clk,qn,qn_bar,);
input s,r,clk;
output qn,qn_bar;


wire mq;
wire mq_bar;
wire mclk;
assign mclk= ~clk;


JK_FF Master(s,r,clk,mq,mq_bar);
JK_FF Slave(mq,mq_bar,mclk,qn,qn_bar);

endmodule
