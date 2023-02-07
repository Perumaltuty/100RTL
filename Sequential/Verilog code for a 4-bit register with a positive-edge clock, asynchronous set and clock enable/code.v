`timescale 1ns / 1ps
module four_bit_register (input clk, input ce, input set, input [3:0] din, output  reg [3:0] dout);

always @(posedge clk) begin
    if (ce) begin
        dout <= din;
    end
end

assign dout = (set) ? 4'b0 : dout;

endmodule
