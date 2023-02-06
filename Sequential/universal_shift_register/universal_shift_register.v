`timescale 1ns / 1ps
module universal_shift_register (out, clk, rst, mode, in);
  output reg [3:0] out;
  input clk, rst;
  input [1:0] mode;
  input [3:0] in;
always @(posedge clk)
  begin
    if(rst)
      out <= 0;
    else
      begin
        case(mode)
          2'b00 : out <= out;     
          2'b01 : out <= {in[0], out[3:0]};
          2'b10 : out <= {out[2:0], in[0]};
          2'b11 : out <= in;    
        endcase
      end
  end
endmodule
