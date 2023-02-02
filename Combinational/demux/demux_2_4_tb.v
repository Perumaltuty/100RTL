`timescale 1ns / 1ps
module demux_tb();
  reg sel;
  reg in;
  wire [3:0] out;
  demux_2_4 uut (
    .sel(sel),
    .in(in),
    .out(out)
  );

  initial begin
    in = 1;
    for (integer i = 0; i < 4;i = i+1) begin
    
      sel = i;

      if (out != (sel == i ? in : 1'b0)) begin
        $display("FAILED: sel = %d, out = %d", sel, out);
        $finish;
      end
    end
    $display("PASSED");
    $finish;
  end
endmodule

