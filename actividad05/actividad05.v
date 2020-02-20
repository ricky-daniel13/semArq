module actividad05(
	input [31:0]a,
	input [31:0]b,
	input [2:0]sel,
	input enable,
	output reg [31:0]salida
);
wire [5:0]c;
compAnd cA(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c[0])
);

compOr cO(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c[1])
);

compNand cN(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c[2])
);

suma s(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c[3])
);

resta r(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c[4])
);

multiplicacion m(
	.a(a),
	.b(b),
	.enable(enable),
	.salida(c[5])
);
always @*
begin
	case(sel)
		3'b000:
			salida = c[0];
		3'b001:
			salida = c[1];
		3'b100:
			salida = c[2];
		3'b010:
			salida = c[3];
		3'b011:
			salida = c[4];
		3'b111:
			salida = c[5];
		default:
			salida = 0;
	endcase
end
endmodule