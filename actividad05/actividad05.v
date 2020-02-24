module actividad05(
	input [31:0]a,
	input [31:0]b,
	input [2:0]sel,
	input enable,
	output reg [31:0]salida
);
wire [31:0]
	c,
	c1,
	c2,
	c3,
	c4,
	c5;
compAnd cA(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c)
);

compOr cO(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c1)
);

compNand cN(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c2)
);

suma s(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c3)
);

resta r(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c4)
);

multiplicacion m(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c5)
);
always @*
begin
	case(sel)
		3'b000:
			salida = c;
		3'b001:
			salida = c1;
		3'b100:
			salida = c2;
		3'b010:
			salida = c3;
		3'b011:
			salida = c4;
		3'b111:
			salida = c5;
		default:
			salida = 0;
	endcase
end
endmodule