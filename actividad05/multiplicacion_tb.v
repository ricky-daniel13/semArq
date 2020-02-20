`timescale 1ns/1ns

module multiplicacion_tb();
reg [31:0]a;
reg [31:0]b;
reg en;
wire [31:0]mul;
multiplicacion m(
	.a(a),
	.b(b),
	.enable(en),
	.salida(mul)
);
initial
begin
	en = 1'b1;
	a = 32'd8;
	b = 32'd16;
	#100;
	en = 1'b0;
	a = 32'd8;
	b = 32'd16;
	#100;
	en = 1'b1;
	a = 32'd20;
	b = 32'd100;
	#100;
	en = 1'b1;
	a = 32'd34;
	b = 32'd122;
	#100;
	en = 1'b0;
	a = 32'd34;
	b = 32'd122;
	#100;
end
endmodule