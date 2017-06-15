// //////////////////////////////////////////////////////////////////////
// Comment :  This is my second Verilog Design                        ///
// Author  :  BA                                                      ///
// Version :  V1.0                                                    ///
// Program :  This is a 4 bit up-counter (and Testbench code)         ///
/////////////////////////////////////////////////////////////////////////



module Counter (clock,reset,enable,counter_out);

input clock, reset, enable;
output [3:0] counter_out;

wire clock, reset, enable;
reg [3:0] counter_out;

always @ (posedge clock) begin
	if (reset == 1'b1) begin 
		counter_out = 4'b0000;
	end
	
	else if (enable == 1'b1) begin
		counter_out = counter_out + 1;

	end

end
endmodule

//Testbech
module Counter_tb ();

reg clock, reset, enable;
wire [3:0] counter_out;

initial begin

$display ("time\t clk reset enable counter");	
$monitor ("%g\t %b   %b     %b      %b", 
$time, clock, reset, enable, counter_out);
clock = 1;       // initial value of clock
reset = 0;       // initial value of reset
enable = 0;      // initial value of enable
#5  reset = 1;    // Assert the reset
#10  reset = 0;   // De-assert the reset
#10  enable = 1;  // Assert enable
#100  enable = 0; // De-assert enable
#5  $finish; 
end

// Clock generator
always begin
   #5  clock = ~clock; // Toggle clock every 5 ticks
end

// Connect DUT to test bench
Counter U_counter (
clock,
reset,
enable,
counter_out
);

endmodule

