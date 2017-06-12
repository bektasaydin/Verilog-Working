// Version - 1
module Mux(a,b,sel,out);

input a, b, sel;
output out;
wire nsel,nsela,selb;

assign nsel = ~sel;
assign nsela = nsel & a;
assign selb = sel & b;
assign out = nsela | selb;

endmodule

// Version - 2
module Mux2 (a,b,sel,out);

input a, b, sel;
output out;

wire nsel = ~sel;
wire nsela = nsel & a;
wire selb = sel & b;

assign out = nsela | selb;

endmodule

