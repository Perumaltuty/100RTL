`timescale 1ns / 1ps
module deocer_tb();
  reg [2:0] data;
  wire [7:0] decoded;
  decoder_8_3 uut (
    .data(data),
    .decoded(decoded)
  );

  initial begin
    data = 0;
    #10
    for (integer i = 0; i < 8; i = i+1)
     begin
      data = i;
      #10
      if (decoded != (1 << i)) begin
        $display("FAILED: data = %d, decoded = %d", data, decoded);
        $finish;
      end
    end
    $display("PASSED");
    $finish;
  end
endmodule
