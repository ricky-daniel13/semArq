module fullAdder(
	input entrada1,
	input entrada2,
	input entAcarreo,
	output suma,
	output acarreo
);
wire 
	cableSum,
	cableComp, 
	cabAcarreo;
halfAdder half1(
	.entrada1(entrada1),
	.entrada2(entrada2),
	.suma(cableSum),
	.acarreo(cableComp)
);
halfAdder half2(
	.entrada1(cableSum),
	.entrada2(entAcarreo),
	.suma(suma),
	.acarreo(cabAcarreo)
);
assign acarreo = cableComp | cabAcarreo;
endmodule