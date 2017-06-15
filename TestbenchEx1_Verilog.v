// //////////////////////////////////
// Comment :  My first program    ///
// Author  :  BA                  ///
// Version :  V1.0                ///
// Program :  y = (~b .~c)+(a .~b)///
/////////////////////////////////////

module Func (a,b,c,y);
input a,b,c;
output y;

assign y = (~b & ~c) | (a & ~b);

endmodule

module Func_tb ();

reg a,b,c;
wire y;

Func dut (a,b,c,y);

always begin
a = 0; b = 0; c = 0; #10;
a = 1; b = 0; c = 0; #10;
a = 0; b = 1; c = 0; #10;
end

endmodule


