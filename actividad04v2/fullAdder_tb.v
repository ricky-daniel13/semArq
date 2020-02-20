`timescale 1ns / 1ns

module fullAdder_tb();

//wires y registros
reg 
	r1, 
	r2,
	rAcarreo;
wire 
	salida,
	salidaAcarreo;
fullAdder fa(
		.entrada1(r1),
		.entrada2(r2),
		.entAcarreo(rAcarreo),
		.suma(salida),
		.acarreo(salidaAcarreo)
);
initial
begin
	r1 = 1'b0;
	r2 = 1'b0;
	rAcarreo = 1'b0;
	#100;
	r1 = 1'b1;
	r2 = 1'b0;
	rAcarreo = 1'b0;
	#100;
	r1 = 1'b0;
	r2 = 1'b1;
	rAcarreo = 1'b0;
	#100;
	r1 = 1'b1;
	r2 = 1'b1;
	rAcarreo = 1'b0;
	#100;
	r1 = 1'b0;
	r2 = 1'b0;
	rAcarreo = 1'b1;
	#100;
	r1 = 1'b1;
	r2 = 1'b0;
	rAcarreo = 1'b1;
	#100;
	r1 = 1'b0;
	r2 = 1'b1;
	rAcarreo = 1'b1;
	#100;
	r1 = 1'b1;
	r2 = 1'b1;
	rAcarreo = 1'b1;
	#100;
end
endmodule