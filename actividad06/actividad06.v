module actividad06(
	input [7:0]
		a,
		b,
	input [2:0]sel,
	input
		en,
		clk,
	output [7:0]datoSalida,
	output zeroFlag
);
wire [7:0]dato;

ALU alu(
	.a(a),
	.b(b),
	.sel(sel),
	.zeroFlag(zeroFlag),
	.res(dato)
);

memoria mem(
	.en(en),
	.clk(clk),
	.dir(b),
	.datoEntrada(dato),
	.datoSalida(datoSalida)
);
endmodule