`timescale 1ns / 1ns

module halfAdder_tb();

//wires y registros
reg 
	r1, 
	r2;
wire 
	salida,
	salidaAcarreo;
halfAdder ha(
		.entrada1(r1),
		.entrada2(r2),
		.suma(salida),
		.acarreo(salidaAcarreo)
);
initial
begin
	r1 = 1'b0;
	r2 = 1'b0;
	#100;
	r1 = 1'b1;
	r2 = 1'b0;
	#100;
	r1 = 1'b0;
	r2 = 1'b1;
	#100;
	r1 = 1'b1;
	r2 = 1'b1;
	#100;
end
endmodule