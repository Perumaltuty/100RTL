`timescale 1ns / 1ps

module mux_2X1(
input [7:0] a ,
input [7:0] b,
input sel,
output [7:0] c
    );
    assign c = sel? a:b;
endmodule
