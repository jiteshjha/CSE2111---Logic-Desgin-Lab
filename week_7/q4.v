module q4(a, b);
input [3: 0]a;
input [3: 0]b;
                                           
module mux4to1(w, s, g);
input [3 :0]w;
input [1: 0]s;
output g;
reg g;
always @(w or s)
	begin
		assign g = s == 0 ? w[0] : s == 1 ? w[1] : s == 2 ? w[2] : w[3];
	end
endmodule  
