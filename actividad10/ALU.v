module ALU(
	input [31:0]
		a,
		b,
	input [3:0]sel,
	output reg zeroFlag,
	output reg [31:0]res
);
always @*
begin
	zeroFlag = 1'b0;
	case(sel)
		4'b0000:	// Sum
			res = a+b;
		4'b0001:	// Substraction
			res = a-b;
		4'b0010:	// Multiplication
			res = a*b;
		4'b0011:	// Division
			res = a/b;
		4'b0100:	// AND
			res = a&b;
		4'b0101:	// OR
			res = a|b;
		4'b0110:	// NAND
			res = ~(a&b);
		default:
			res = 32'b0;
	endcase
	if(res == 32'b0)
	begin
		zeroFlag = 1'b1;
	end
end
endmodule