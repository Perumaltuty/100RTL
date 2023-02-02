`timescale 1ns / 1ps
module parity_tb();
  reg x, y, z;
  wire result;
  parity_generator uut (
    .x(x),
    .y(y),
    .z(z),
    .result(result)
  );

  initial begin
    for (integer i = 0; i < 8;i = i+1) begin
      x = i[2];
      y = i[1];
      z = i[0];
      #10
      if (result != (x ^ y ^ z)) begin
        $display("FAILED: x = %d, y = %d, z = %d, result = %d", x, y, z, result);
        $finish;
      end
    end
    $display("PASSED");
    $finish;
  end
endmodule

