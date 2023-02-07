`timescale 1ns / 1ps

module r_s_tb;

reg oper;
reg [7:0] a;
reg [7:0] b;
reg [7:0] c;

wire [7:0] res;

resource_sharing dut (
    .oper(oper),
    .a(a),
    .b(b),
    .c(c),
    .res(res)
);

initial begin

    a = 8'h01;
    b = 8'h02;
    c = 8'h03;
    oper = 1'b0;
    #100;
    oper = 1'b1;
    #100;
    oper = 1'b0;
    #100;
   oper = 1'b1;
    #100;
    oper = 1'b0;
    #100;
    oper = 1'b1;
#100;
    oper = 1'b0;
    #100;  
    oper = 1'b1;
    #100;
    oper = 1'b0;
end

initial begin
    #200;
    forever begin
        #100;
        $display("Oper = %d, a = %h, b = %h, c = %h, res = %h", oper, a, b, c, res);
    end
end

endmodule
