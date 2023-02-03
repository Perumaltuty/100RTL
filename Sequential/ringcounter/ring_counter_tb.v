module ring_counter_tb;
  reg clk;
  reg rstn;
  wire [WIDTH-1:0] out;
  ring_counter uut (
    .clk(clk),
    .rstn(rstn),
    .out(out)
  );
  initial begin
    clk = 0;
    rstn = 0;
  end
  always #5 clk = ~clk;

  // Reset the counter
  initial begin
    #100;
    rstn = 1;
  end
  initial begin
    #1000;
    $stop;
  end
endmodule
