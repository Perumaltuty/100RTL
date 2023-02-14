module alarm(a, b, c, d, o);

input a, b, c, d;

output wire o;

assign o = (a&d) | (b&d) | (c&d);

endmodule
