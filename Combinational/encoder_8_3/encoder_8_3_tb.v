module encoder_8_3_tb;
reg [7:0]din;

wire [2:0]dout;
encoder_8_3 uut(.din(din),.dout(dout));
initial
begin

din=8'h0_1;
#30;
din=8'h0_2;
#30;
din=8'h0_4;
#30;
din=8'h0_8;
#30;
din=8'h1_0;
#30;
din=8'h2_0; #30;
din=8'h4_0;
#30; din=8'h8_0;
#30; 
$finish; 
end
endmodule
