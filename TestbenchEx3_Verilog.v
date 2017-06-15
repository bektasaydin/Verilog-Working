// //////////////////////////////////////////////////////////////////////
// Comment :  Verilog Design                                          ///
// Author  :  BA                                                      ///
// Version :  V1.0                                                    ///
// Program :  Behavioral Model of a 4 to 1 MUX (16 data inputs)        ///
/////////////////////////////////////////////////////////////////////////


module Mux_4to1 (a,b,c,d,sel,y);

input  [15:0] a,b,c,d;
input  [1:0]  sel;
output [15:0] y;
reg    [15:0] y;

always @(a,b,c,d) begin
	case(sel)
	  2'b00: y = a;
	  2'b01: y = b;
	  2'b10: y = c;
	  2'b11: y = d;
	endcase
end
endmodule



//******************** TESTBENCH *********************
module Mux_4to1_tb ();

reg  [15:0] a,b,c,d;
reg  [1:0]  sel;
reg 	    clk;
wire [15:0] y;


always @(*) begin
   #10 clk = ~clk;
end


Mux_4to1 DUT (a,b,c,d,sel,y);

initial begin
   $display ("time\t a b c d sel y");	
   $monitor ("%g\t %b   %b     %b      %b", 
   $time, a, b, c, d, sel, y);
   a = 16'hAAAA; b = 16'h5555; c = 16'h005A; d = 16'h5A00;
   clk = 1'b0;  // time = 0 

   #5 sel = 2'b00;
   a = 16'h0001;
   #10 sel = 2'b01;
   b = 16'hFFFF;
   #15 sel = 2'b10;
   c = 16'h00FF;
   #20 sel = 2'b11;
   d = 16'hFF00;
   #50 $finish;

end
endmodule