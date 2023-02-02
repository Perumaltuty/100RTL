`timescale 1ns / 1ps
module encoder_4_2(
  input [3:0] data,
  output reg [1:0] encoded
);
  always @ * begin
    case (data)
      4'b0000: encoded = 2'b00;
      4'b0001: encoded = 2'b01;
      4'b0010: encoded = 2'b10;
      4'b0011: encoded = 2'b11;
      4'b0100: encoded = 2'b00;
      4'b0101: encoded = 2'b01;
      4'b0110: encoded = 2'b10;
      4'b0111: encoded = 2'b11;
      4'b1000: encoded = 2'b00;
      4'b1001: encoded = 2'b01;
      4'b1010: encoded = 2'b10;
      4'b1011: encoded = 2'b11;
      4'b1100: encoded = 2'b00;
      4'b1101: encoded = 2'b01;
      4'b1110: encoded = 2'b10;
      4'b1111: encoded = 2'b11;
    endcase
  end
endmodule
