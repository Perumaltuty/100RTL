module swap_without_temporary(
  input wire a, b,
  output wire swapped_a, swapped_b
);
  assign swapped_a = b;
  assign swapped_b = a;

endmodule
