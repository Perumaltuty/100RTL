`timescale 1ns / 1ps
module half_adder_tb();
  reg a;
  reg b;
  wire sum;
  wire carry;
  half_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    for (integer i = 0; i < 2;i = i+1) begin
      a = i;
      for (integer j = 0; j < 2;j = j+1) begin
        b = j;
        #10
        if (sum != (a ^ b) || carry != (a & b)) begin
          $display("FAILED: a = %d, b = %d, sum = %d, carry = %d", a, b, sum, carry);
          $finish;
        end
      end
    end
    $display("PASSED");
    $finish;
  end
endmodule
