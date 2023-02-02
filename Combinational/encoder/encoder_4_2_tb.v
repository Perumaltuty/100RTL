`timescale 1ns / 1ps
module encoder_4_2_tb();
  reg [3:0] data;
  wire [1:0] encoded;

  encoder_4_2 e(
    .data(data),
    .encoded(encoded)
  );
  
  initial begin
    data = 4'b0000;
    #5
    if (encoded != 2'b00) begin
      $display("Error: expected encoded to be 2'b00 but got %b", encoded);
    end else begin
      $display("Test passed: encoded = %b", encoded);
    end
    data = 4'b0001;
    #5
    if (encoded != 2'b01) begin
      $display("Error: expected encoded to be 2'b01 but got %b", encoded);
    end else begin
      $display("Test passed: encoded = %b", encoded);
    end
    data = 4'b0010;
    #5
    if (encoded != 2'b10) begin
      $display("Error: expected encoded to be 2'b10 but got %b", encoded);
    end else begin
      $display("Test passed: encoded = %b", encoded);
    end
    data = 4'b0011;
    #5
    if (encoded != 2'b11) begin
      $display("Error: expected encoded to be 2'b11 but got %b", encoded);
    end else begin
      $display("Test passed: encoded = %b", encoded);
    end
    $finish;
  end
endmodule

