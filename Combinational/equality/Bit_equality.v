`timescale 1ns / 1ps
module Bit_equality ( input [1:0] A, input [1:0] B, output reg z ); 
    always @(*)
        if ( A==B)
            z=1;
    else z=0;
endmodule

