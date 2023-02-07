`timescale 1ns / 1ps


module arbiter_tb();

reg [4:0] req;
wire [4:0] grt;
reg clk, rst_;

arbiter tb (
  .req(req),
  .grt(grt),
  .clk(clk),
  .rst_(rst_)
);

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  rst_ = 1;
  #10 rst_ = 0;
end

initial begin
  req = 0;
  #10 req = 1;
  #10 req = 2;
  #10 req = 4;
  #100 $finish;
end

endmodule
