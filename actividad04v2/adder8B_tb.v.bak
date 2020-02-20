`timescale 1ns / 1ns

module adder4B_tb();

//wires y registros
reg [3:0]entradasA;
reg [3:0]entradasB;
reg rAcarreo;
wire [3:0]salidas;
wire salidaAcarreo;
adder4B ad(
	.a1(entradasA[0]),
	.a2(entradasA[1]),
	.a3(entradasA[2]),
	.a4(entradasA[3]),
	.b1(entradasB[0]),
	.b2(entradasB[1]),
	.b3(entradasB[2]),
	.b4(entradasB[3]),
	.entAcarreo(rAcarreo),
	.s1(salidas[0]),
	.s2(salidas[1]),
	.s3(salidas[2]),
	.s4(salidas[3]),
	.salAcarreo(salidaAcarreo)
);
initial
begin
	entradasA = 4'd1;
	entradasB = 4'd1;
	rAcarreo = 1'b1;
	#100;
	entradasA = 4'd1;
	entradasB = 4'd2;
	rAcarreo = 1'b0;
	#100;
	entradasA = 4'd3;
	entradasB = 4'd2;
	rAcarreo = 1'b0;
	#100;
	entradasA = 4'd5;
	entradasB = 4'd1;
	rAcarreo = 1'b1;
	#100;
	entradasA = 4'd4;
	entradasB = 4'd4;
	rAcarreo = 1'b1;
	#100;
end
endmodule