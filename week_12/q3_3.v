module q3_3(clk, q, up, down);
input up, down,clk;
output [3:0]q;

and(p1, ~up, down);
or(p2, up, p1);
tff1 s0(p2, clk, q[0]);

and(p3, ~q[0], p1);
and(p4, q[0], up);
or(p5, p3, p4);
tff1 s1(p5, clk, q[1]);

and(p6, p3, q[1]);
and(p7, p4, ~q[1]);
or(p8, p6, p7);
tff1 s2(p8, clk, q[2]);

and(p9, p6, ~q[2]);
and(p10, p7, q[2]);
or(p11, p10, p9);
tff1 s3(p11, clk, q[3]);

endmodule

module tff1(t,clk,q);
input t, clk;
output q;
reg q;
always @ (negedge clk)
	if( !t )
		q <= q;
	else
	q<=~q;
endmodule
