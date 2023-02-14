module swap_with_temporary(
  input wire a, b,
  output wire swapped_a, swapped_b
);
  reg temp;

  always @(*) begin
    temp = a;
    swapped_a = b;
    swapped_b = temp;
  end

endmodule
