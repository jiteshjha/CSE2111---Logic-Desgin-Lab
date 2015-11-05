module q3(cin, x, y, s, cout);
input cin;
input [3:0]x, y;
output [3: 0]s;
output cout;

xor(y0, y[0], cin);
xor(y1, y[1], cin);
xor(y2, y[2], cin);
xor(y3, y[3], cin);

fulladd stage0(cin, x[0] , y0, s[0], c1);
fulladd stage1(c1, x[1], y1, s[1], c2);
fulladd stage2(c2, x[2], y2, s[2], c3);
fulladd stage3(c3, x[3], y3, s[3], cout);
endmodule

module fulladd(ci, x, y, s, co);
input ci, x, y;
output s, co;
assign s = x ^ y ^ ci; 
assign co = x&y | x&ci | y&ci;
endmodule

