`timescale 1ns / 1ns

module adder8B_tb();

//wires y registros
reg [7:0]entradasA;
reg [7:0]entradasB;
reg rAcarreo;
wire [7:0]salidas;
wire salidaAcarreo;
adder8B ad(
	.a(entradasA),
	.b(entradasB),
	.entAcarreo(rAcarreo),
	.sum(salidas),
	.salAcarreo(salidaAcarreo)
);
initial
begin
	entradasA = 8'd5;
	entradasB = 8'd5;
	rAcarreo = 1'b1;
	#100;
	entradasA = 8'd4;
	entradasB = 8'd7;
	rAcarreo = 1'b0;
	#100;
	entradasA = 8'd8;
	entradasB = 8'd6;
	rAcarreo = 1'b0;
	#100;
	entradasA = 8'd5;
	entradasB = 8'd11;
	rAcarreo = 1'b1;
	#100;
	entradasA = 8'd2;
	entradasB = 8'd9;
	rAcarreo = 1'b1;
	#100;
end
endmodule