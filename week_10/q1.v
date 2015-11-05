module q1(a, b, g, l, e);
input [3: 0]a, b;
output g, l, e;
wire [3: 0]i;
xnor(i[0], a[0], b[0]);
xnor(i[1], a[1], b[1]);
xnor(i[2], a[2], b[2]);
xnor(i[3], a[3], b[3]);
assign e = i[0] & i[1] & i[2] & i[3];
assign g = (a[3] & ~b[3]) | (i[3] & a[2] & ~b[2]) | (i[3] & i[2] & a[1] & ~b[1]) | (i[3] & i[2] & i[1] & a[0] & ~b[0]);
assign l = ~(e | g);
endmodule
