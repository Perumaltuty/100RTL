module clock_buffer(mclk,bclk);

input mclk;
output bclk;

buff b1(mclk,bclk);

endmodule
