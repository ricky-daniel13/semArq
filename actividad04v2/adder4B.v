module adder4B(
	input a1,
	input a2,
	input a3,
	input a4,
	input b1,
	input b2,
	input b3,
	input b4,
	input entAcarreo,
	output s1,
	output s2,
	output s3,
	output s4,
	output salAcarreo
);
wire 
	c1,
	c2,
	c3;
fullAdder full1(
	.entrada1(a1),
	.entrada2(b1),
	.entAcarreo(entAcarreo),
	.suma(s1),
	.acarreo(c1)
);
fullAdder full2(
	.entrada1(a2),
	.entrada2(b2),
	.entAcarreo(c1),
	.suma(s2),
	.acarreo(c2)
);
fullAdder full3(
	.entrada1(a3),
	.entrada2(b3),
	.entAcarreo(c2),
	.suma(s3),
	.acarreo(c3)
);
fullAdder full4(
	.entrada1(a4),
	.entrada2(b4),
	.entAcarreo(c3),
	.suma(s4),
	.acarreo(salAcarreo)
);
endmodule