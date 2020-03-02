module actividad06_v();
reg [7:0]
	a,
	b;
reg [2:0]sel;
reg
	en,
	clk;
wire [7:0]datoSalida;
wire zeroFlag;

actividad06 act(
	.a(a),
	.b(b),
	.sel(sel),
	.zeroFlag(zeroFlag),
	.en(en),
	.clk(clk),
	.datoSalida(datoSalida)
);

always #10
begin
	clk = !clk;
end

initial
begin
	
end
endmodule