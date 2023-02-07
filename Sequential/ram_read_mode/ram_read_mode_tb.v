`timescale 1ns / 1ps
`timescale 1ns / 1ps
module ram_read_mode_tb;
   reg clk;
   reg en;
   reg we;
   reg [4:0] addr;
   reg [3:0] di;
   wire [3:0] do;

   ram_read_mode dut (
      .clk(clk),
      .en(en),
      .we(we),
      .addr(addr),
      .di(di),
      .do(do)
   );

   initial begin
      clk = 0;
      forever #5 clk = ~clk;
   end

   initial begin
      en = 0;
      we = 0;
      addr = 0;
      di = 0;
     
   end

   always @ (posedge clk) begin
      if (en) begin
         if (we) begin
            addr = addr + 1;
            di = di + 1;
        
         $display("Address: %d, Data Out: %d", addr, do);
          end
         else begin
         addr = addr+1;
       
      end
      end
   end

   always @ (posedge clk) begin
    #50;
         en = 1;
         we = 1;
        
        
         #100;
         
         we=0;
          addr=0;
         #50;
          #100 $finish;
      end
 
endmodule
