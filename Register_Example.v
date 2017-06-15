// //////////////////////////////////////////////////////////////////////
// Comment :  Verilog Design                                          ///
// Author  :  BA                                                      ///
// Version :  V1.0                                                    ///
// Program :  Examples (Register)                                     ///
/////////////////////////////////////////////////////////////////////////

//Following is Verilog code for a 4-bit register with a positive-edge clock, asynchronous set and clock enable.
module FourBRegCE (clk,d,ce,pre,q);

input  clk,ce,pre;
input  [3:0] d;
output [3:0] q;
reg    [3:0] q;

always @(posedge clk or posedge pre) begin

  if (pre)
     q <= 4'b1111;
  else
     q <= d;  
end

endmodule

