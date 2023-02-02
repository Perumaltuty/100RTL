module counter_tb();
  reg clk;
  wire [7:0] count;
  
  counter cntr(
    .clk(clk),
    .count(count)
  );
  
  initial begin
    clk = 0;
    #5
    clk = 1;
    #5
    clk = 0;
    #5
    clk = 1;
    #5
    $finish;
  end
  
  initial begin
    #10
    if (count != 2'b10) begin
      $display("Error: expected count to be 10 but got %d", count);
    end else begin
      $display("Test passed: count = %d", count);
    end
  end
endmodule
