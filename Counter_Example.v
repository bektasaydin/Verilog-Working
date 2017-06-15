// //////////////////////////////////////////////////////////////////////
// Comment :  Verilog Design                                          ///
// Author  :  BA                                                      ///
// Version :  V1.0                                                    ///
// Program :  Examples (Counter)                                      ///
/////////////////////////////////////////////////////////////////////////


// Following is the Verilog code for a 4-bit unsigned up counter with asynchronous clear.
module FourB_CounterUpC (clk,clr,q);

input        clk,clr;
output [3:0] q;
reg    [3:0] temp;

always @(posedge clk or posedge clr) begin

  if (clr)
     temp <= 4'b0000;
  else
     temp <= temp + 1'b1;
end

assign q = temp;

endmodule 


//Following is the Verilog code for a 4-bit unsigned down counter with synchronous set.
module FourB_CounterDownS (clk,s,q);

input        clk,s;
output [3:0] q; 
reg    [3:0] temp; 

always @(posedge clk) begin

  if (s)
     temp <= 4'b1111;
  else
     temp <= temp - 1'b1;
end

assign q = temp;

endmodule


//Following is the Verilog code for a 4-bit unsigned up counter with an asynchronous load from the primary input.
module FourB_CounterUpLPI (clk,load,d,q);

input       clk,load;
input  [3:0] d;
output [3:0] q;
reg    [3:0] temp;

always @(posedge clk or posedge load) begin

  if (load)
     temp <= d;
  else
     temp <= temp + 1'b1;
end

assign q = temp;

endmodule


//Following is the Verilog code for a 4-bit unsigned up counter with a synchronous load with a constant.
module FourB_CounterUpL (clk, sload, q);

input        clk,sload;
output [3:0] q;
reg    [3:0] temp;

always @(posedge clk) begin

  if (sload)
     temp <= 4'b1010;
  else
     temp <= temp + 1'b1;
end

assign q = temp;

endmodule


//Following is the Verilog code for a 4-bit unsigned up counter with an asynchronous clear and a clock enable.
module FourB_CounterUpCe (clk,clr,ce,q);

input        clk,clr,ce;
output [3:0] q;
reg    [3:0] temp;

always @(posedge clk or posedge clr) begin

  if (clr)
     temp <= 4'b0000;
  else if (ce)
     temp <= temp + 1'b1;
end

assign q = temp;

endmodule





