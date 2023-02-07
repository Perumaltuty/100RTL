`timescale 1ns / 1ps
module four_bit_register_tb;

// Inputs
reg clk;
reg ce;
reg set;
reg [3:0] din;

// Outputs
wire [3:0] dout;

// Instantiate the 4-bit register module
four_bit_register dut (
    .clk(clk),
    .ce(ce),
    .set(set),
    .din(din),
    .dout(dout)
);

initial begin
    // Initialize inputs
    din = 4'b0000;
    set = 1'b0;
    ce = 1'b1;
    // Wait for 10 ns
    #10;
    // Change din to 4'b0001
    din = 4'b0001;
    // Wait for 10 ns
    #10;
    // Change ce to 0
    ce = 1'b0;
    // Wait for 10 ns
    #10;
    // Change ce to 1
    ce = 1'b1;
    // Wait for 10 ns
    #10;
    // Change set to 1
    set = 1'b1;
    // Wait for 10 ns
    #10;
    // Change set to 0
    set = 1'b0;
    // Wait for 10 ns
    #10;
    // Change din to 4'b0010
    din = 4'b0010;
    // Wait for 10 ns
    #10;
end

// Generate the clock signal
always begin
    #5;
    clk = ~clk;
end

// Monitor the dout output
initial begin
    #100;
    forever begin
        #10;
        $display("Time = %0t, clk = %b, ce = %b, set = %b, din = %b, dout = %b", $time, clk, ce, set, din, dout);
    end
end

endmodule
