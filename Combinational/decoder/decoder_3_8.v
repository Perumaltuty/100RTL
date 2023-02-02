`timescale 1ns / 1ps
module decoder_8_3(
  input [2:0] data,
  output reg [7:0] decoded
);
  always @* begin
    case (data)
      3'b000: decoded = 8'b00000001;
      3'b001: decoded = 8'b00000010;
      3'b010: decoded = 8'b00000100;
      3'b011: decoded = 8'b00001000;
      3'b100: decoded = 8'b00010000;
      3'b101: decoded = 8'b00100000;
      3'b110: decoded = 8'b01000000;
      3'b111: decoded = 8'b10000000;

      default: decoded = 8'b00000000;
    endcase
  end
endmodule
