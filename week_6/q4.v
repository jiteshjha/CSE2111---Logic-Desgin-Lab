module q4(s ,w ,f);
input [1:0]s;
input [3:0]w;
output f;
assign f = s == 0 ? w[0] : s == 1 ? w[1] : s == 2 ? w[2] : w[3];
endmodule
