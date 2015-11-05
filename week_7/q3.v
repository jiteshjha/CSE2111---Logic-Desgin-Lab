module q3a(a, f);
input [2: 0]a;
output f;
wire [3: 0]b;
wire [1: 0]c;
assign c[0] = a[1];
assign c[1] = a[2];
assign b[0] = ~a[0];
assign b[1] = 1;
assign b[2] = 0;
assign b[3] = ~a[0];  
mux4to1 stage0(b, c, f);
endmodule
                                                                                                                                                                                                                                                       
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

