module q_lab6_5(w1, s1, g1);
input [0: 3]w1;
input [1: 0]s1;
output g1;


function mux4to1;
input [0 :3]w;
input [1: 0]s;

case (s)
0: mux4to1 = w[0];
1: mux4to1 = w[1];
2: mux4to1 = w[2];
3: mux4to1 = w[3];
endcase
endfunction

reg g1;

always @(s1)
begin
	g1 = mux4to1(w1[0: 3], s1[1: 0]);
end
endmodule
