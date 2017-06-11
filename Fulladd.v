module halfadd(a,b,sum,carry);

input a,b;
output sum,carry;

assign sum = a^b;
assign carry = a&b;

endmodule

module fulladd(a,b,Cin,sum,carry);

input a,b,Cin;
output sum,carry;

wire n_sum,n_carry1,n_carry2;

halfadd U1(.a(a), .b(b), .sum(n_sum), .carry(n_carry1));
halfadd U2(.a(n_sum), .b(Cin), .sum(sum), .carry(n_carry2));
or 	U3(carry, n_carry2, n_carry1);

endmodule
