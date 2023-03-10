`timescale 1ns / 1ps
module D_latch (data, en, reset, q);
input data, en, reset ;
output q;
reg q;
always @ ( en or reset or data)
if (reset) begin
q <= 1'b0;
end else if (en) begin
q <= data;
end
endmodule
