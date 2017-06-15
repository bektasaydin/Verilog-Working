// //////////////////////////////////////////////////////////////////////
// Comment :  Verilog Design                                          ///
// Author  :  BA                                                      ///
// Version :  V1.0                                                    ///
// Program :  Examples (Latch)                                     ///
/////////////////////////////////////////////////////////////////////////


//Following is the Verilog code for a latch with a positive gate.
module PLatch (g,d,q);

input  g,d;
output q;
reg    q;

always @(g or d) begin

  if (g)
     q <= d;
end

endmodule


//Following is the Verilog code for a latch with a positive gate and an asynchronous clear.
module PLatchC (g,d,clr,q);

input  g,d,clr;
output q;
reg    q;

always @(g or d) begin

  if (clr)
     q <= 1'b0;
  else
     q <= d;
end

endmodule


//Following is Verilog code for a 4-bit latch with an inverted gate and an asynchronous preset.
module InvLatchPS (g,d,pre,q);

input        g,pre;
input  [3:0] d;
output [3:0] q;
reg    [3:0] q;

always @(q or d or pre) begin

  if (pre)
     q <= 4'b1111;
  else if (~g)
     q <= d;
end 

endmodule


