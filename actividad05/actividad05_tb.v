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
	//prueba 1 AND
	a = 32'd4201;
	b = 32'd6669;
	sel = 3'b000;
	en = 1;
	#20;
	//prueba 2 OR
	a = 32'd4201;
	b = 32'd6669;
	sel = 3'b001;
	en = 1;
	#20;
	//prueba 3 NAND
	a = 32'd4201;
	b = 32'd6669;
	sel = 3'b100;
	en = 1;
	#20;
	//prueba 4 suma
	a = 32'd8;
	b = 32'd16;
	sel = 3'b010;
	en = 1;
	#20;
	//prueba 5 resta
	a = 32'd8;
	b = 32'd16;
	sel = 3'b011;
	en = 1;
	#20;
	//prueba 6 Multiplicacion
	a = 32'd8;
	b = 32'd16;
	sel = 3'b111;
	en = 1;
	#20;
	//prueba 7 Seleccion invalida
	a = 32'd8;
	b = 32'd16;
	sel = 3'b110;
	en = 1;
	#20;
	//prueba 8 Seleccion invalida
	a = 32'd8;
	b = 32'd16;
	sel = 3'b101;
	en = 1;
	#20;
	//prueba 9 enable 0
	a = 32'd8;
	b = 32'd16;
	sel = 3'b010;
	en = 0;
	#20;
	//prueba 10 AND
	a = 32'd23141251;
	b = 32'd35236234;
	sel = 3'b000;
	en = 1;
	#20;
	//prueba 11 OR
	a = 32'd23141251;
	b = 32'd6669;
	sel = 3'b001;
	en = 1;
	#20;
	//prueba 12 NAND
	a = 32'd23141251;
	b = 32'd6669;
	sel = 3'b100;
	en = 1;
	#20;
	//prueba 13 suma
	a = 32'd8;
	b = 32'd16;
	sel = 3'b010;
	en = 1;
	#20;
	//prueba 14 resta
	a = 32'd8;
	b = 32'd16;
	sel = 3'b011;
	en = 1;
	#20;
	//prueba 15 Multiplicacion
	a = 32'd8;
	b = 32'd16;
	sel = 3'b111;
	en = 1;
	#20;
end
endmodule