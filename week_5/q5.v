module fourbit(x, y, s, cout);
input [3: 0]x, y;
output [3: 0]s;
output cout;

fulladd stage0(0, x[0], y[0], s[0], c1);
fulladd stage1(c1, x[1], y[1], s[1], c2);
fulladd stage2(c2, x[2], y[2], s[2], c3);
fulladd stage3(c3, x[3], y[3], s[3], cout);
endmodule

module fulladd(ci, x, y, s, co);
input ci, x, y;
output s, co;
assign s = x ^ y ^ ci; 
assign co = x&y | x&ci | y&ci;
endmodule

module q5(a, b, total, carry);
input [3 :0]a, b;
output [3 :0]total;
output carry;

wire [3 :0]sum;
fourbit level0(a, b, sum, c4);
and(e1, sum[3], sum[2]);
and(e2, sum[3], sum[1]);
or(carry, c4, e1, e2);
wire [3: 0]r;
assign r[0] = 0;
assign r[1] = carry;
assign r[2] = carry;
assign r[3] = 0;
fourbit level1(sum, r, total, temp);
endmodule

