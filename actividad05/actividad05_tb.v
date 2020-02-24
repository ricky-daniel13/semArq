`timescale 1ns/1ns

module actividad05_tb();
reg [31:0]a;
reg [31:0]b;
reg en;
reg [2:0]sel;
wire [31:0]sal;
actividad05 ac(
	.a(a),
	.b(b),
	.sel(sel),
	.enable(en),
	.salida(sal)
);
initial
begin
	a = 32'd8;
	b = 32'd16;
	sel = 3'b010;
	en = 1;
	#20;
//	en = 1'b0;
//	a = 32'd8;
//	b = 32'd16;
//	#20;
//	en = 1'b1;
//	a = 32'd20;
//	b = 32'd100;
//	#20;
//	en = 1'b1;
//	a = 32'd34;
//	b = 32'd122;
//	#20;
//	en = 1'b0;
//	a = 32'd34;
//	b = 32'd122;
//	#20;
end
endmodule