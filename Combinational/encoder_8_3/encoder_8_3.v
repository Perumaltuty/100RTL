module encoder_8_3(din,dout);
  input [7:0] din;
  output reg[2:0] dout;
  always@(din)
  begin
  case(din)
8'b0000_0001: dout=000;
8'b0000_0010: dout=001;
8'b0000_0100: dout=010;
8'b0000_1000: dout=011;
8'b0001_0000: dout=100;
8'b0010_0000: dout=101;
8'b0100_0000: dout=110;
8'b1000_0000: dout=111;
endcase
end
endmodule
