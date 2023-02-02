`timescale 1ns / 1ps

module D_Flip_flop(
input clk,
input reset,
input D_in,
output reg Q_out
    );
    
    always @(posedge clk )
    if(reset)
    Q_out <= 1'b0;
    else
    Q_out <= D_in;
endmodule
