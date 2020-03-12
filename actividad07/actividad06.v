module actividad06(
	input [7:0]
		a,
		b,
	input [2:0]sel,
	input
		en,
		clk,
	output [7:0]dataOut,
	output zeroFlag
);
wire [7:0]data;

ALU alu(
	.a(a),
	.b(b),
	.sel(sel),
	.zeroFlag(zeroFlag),
	.res(data)
);

memoria mem(
	.en(en),
	.clk(clk),
	.dir(b),
	.dataIn(data),
	.dataOut(dataOut)
);
endmodule