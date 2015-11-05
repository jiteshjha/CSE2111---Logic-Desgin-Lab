module q3(w, y, z);
input [7: 0]w;
output [2: 0]y;
output z;
reg [2: 0]y;
reg z;
integer k;
always@(w)
	begin
		z = 1;
		casex(w)
			8'b00000001 : y = 3'b000;
			8'b0000001x : y = 3'b001;
			8'b000001xx : y = 3'b010;
			8'b00001xxx : y = 3'b011;
			8'b0001xxxx : y = 3'b100;
			8'b001xxxxx : y = 3'b101;
			8'b01xxxxxx : y = 3'b110;
			8'b1xxxxxxx : y = 3'b111;
			default :
				begin
					y = 3'bxxx;
					z = 0;
				end
		endcase
	end
endmodule

