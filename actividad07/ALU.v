module ALU(
	input [7:0]
		a,
		b,
	input [2:0]sel,
	output reg zeroFlag,
	output reg [7:0]res
);
always @*
begin
	zeroFlag = 1'b0;
	case(sel)
		3'b000:	// Sum
			res = a+b;
		3'b001:	// Substraction
			res = a-b;
		3'b010:	// Multiplication
			res = a*b;
		3'b011:	// Division
			res = a/b;
		3'b100:	// AND
			res = a&b;
		3'b101:	// OR
			res = a|b;
		3'b110:	// NAND
			res = ~(a&b);
		default:
			res = 8'b0;
	endcase
	if(res == 8'b0)
	begin
		zeroFlag = 1'b1;
	end
end
endmodule