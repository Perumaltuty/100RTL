module full_adder_tb;
  reg a;
  reg b;
  reg cin;
  wire s;
  wire cout;
  full_adder uut (.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
  initial begin
    repeat(10) 
    begin
    #10 a = $random;
    #10 b = $random;
    #10 cin = $random;
    $display("a = %0d,b = %0d,cin = %0d",a,b,cin);
    if ((a^b^cin == s) && ((a&b)|cin&(a^b) == cout))
    $display("pass");
    else
      $display("fail");
      
    end
  end
endmodule
