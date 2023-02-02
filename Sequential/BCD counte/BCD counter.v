`timescale 1ns / 1ps
module bcd_counter (
  input clk,
  input reset,
  output reg [3:0] bcd
);

always @(posedge clk) begin
  if (reset) begin
    bcd <= 4'b0000;
  end else begin
    if (bcd == 4'b1001) begin
      bcd <= 4'b0000;
    end else begin
      bcd <= bcd + 1;
    end
  end
end

endmodule
