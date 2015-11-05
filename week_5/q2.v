module q2(cin, x, y, s, cout);
input cin;
input [3: 0]x, y;
output [3: 0]s;
output cout;

fulladd stage0(cin, x[0], y[0], s[0], c1);
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
