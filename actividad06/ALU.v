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
		3'b000:	//Seleccion Suma
			res = a+b;
		3'b001:	//Seleccion Resta
			res = a-b;
		3'b010:	//Seleccion Multiplicacion
			res = a*b;
		3'b011:	//Seleccion Division
			res = a/b;
		3'b100:	//Seleccion AND
			res = a&b;
		3'b101:	//Seleccion OR
			res = a|b;
		3'b110:	//Seleccion NAND
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