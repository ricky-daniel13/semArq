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
	a = 32'd6;
	b = 32'd12;
	sel = 3'b011;
	en = 1;
	#20;
	//prueba 6 Multiplicacion
	a = 32'd10;
	b = 32'd24;
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
	a = 32'd84;
	b = 32'd36;
	sel = 3'b101;
	en = 1;
	#20;
	//prueba 9 enable 0
	a = 32'd28;
	b = 32'd136;
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
	b = 32'd35236234;
	sel = 3'b001;
	en = 1;
	#20;
	//prueba 12 NAND
	a = 32'd23141251;
	b = 32'd35236234;
	sel = 3'b100;
	en = 1;
	#20;
	//prueba 13 suma
	a = 32'd2524;
	b = 32'd1;
	sel = 3'b010;
	en = 1;
	#20;
	//prueba 14 resta
	a = 32'd50;
	b = 32'd5;
	sel = 3'b011;
	en = 1;
	#20;
	//prueba 15 Multiplicacion
	a = 32'd4;
	b = 32'd100;
	sel = 3'b111;
	en = 1;
	#20;
	//prueba 16 suma
	a = 32'd222;
	b = 32'd23;
	sel = 3'b010;
	en = 1;
	#20;
	//prueba 17 resta
	a = 32'd2;
	b = 32'd3;
	sel = 3'b100;
	en = 1;
	#20;
	//prueba 18 multiplicacion
	a = 32'd2524;
	b = 32'd1;
	sel = 3'b111;
	en = 1;
	#20;
	//prueba 19 resta
	a = 32'd220;
	b = 32'd220;
	sel = 3'b011;
	en = 1;
	#20;
	//prueba 20 enable 0
	a = 32'd4;
	b = 32'd100;
	sel = 3'b111;
	en = 0;
	#20;
end
endmodule