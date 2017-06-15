// //////////////////////////////////////////////////////////////////////
// Comment :  Verilog Design                                          ///
// Author  :  BA                                                      ///
// Version :  V1.0                                                    ///
// Program :  Examples (Flip-flop)                                    ///
/////////////////////////////////////////////////////////////////////////


// Following is the Verilog code for flip-flop with a positive-edge clock.
module Pflop (clk, d, q);
input  clk,d;
output q;
reg    q;

always @(posedge clk) 
begin
   q <= d;
end

endmodule


//Following is Verilog code for a flip-flop with a negative-edge clock and asynchronous clear
module NflopC (clk,d,clr,q);

input clk,d,clr;
output q;
reg    q;

always @(negedge clk) begin

  if (clr)
     q <= 1'b0;
  else
     q <= d;
end

endmodule


//Following is Verilog code for the flip-flop with a positive-edge clock and synchronous set.
module PflopS (clk,d,s,q);

input  clk,d,s;
output q;
reg    q;

always @(posedge clk) begin
  
  if (s)
     q <= 1'b0;
  else
     q <= d;
end

endmodule


//Following is Verilog code for the flip-flop with a positive-edge clock and clock enable.
module PflopCE (clk,d,ce,q);

input  clk,d,ce;
output q;
reg    q;

always @(posedge clk) begin
  
  if (ce)
     q <= d;
end

endmodule
