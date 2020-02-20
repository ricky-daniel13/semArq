module adder8B(
	input [7:0] a,
	input [7:0] b,
	input entAcarreo,
	output[7:0] sum,
	output salAcarreo
);
wire c1;
adder4B addr1(
	.a1(a[0]),
	.a2(a[1]),
	.a3(a[2]),
	.a4(a[3]),
	.b1(b[0]),
	.b2(b[1]),
	.b3(b[2]),
	.b4(b[3]),
	.entAcarreo(0),
	.s1(sum[0]),
	.s2(sum[1]),
	.s3(sum[2]),
	.s4(sum[3]),
	.salAcarreo(c1)
);
adder4B addr2(
	.a1(a[4]),
	.a2(a[5]),
	.a3(a[6]),
	.a4(a[7]),
	.b1(b[4]),
	.b2(b[5]),
	.b3(b[6]),
	.b4(b[7]),
	.entAcarreo(c1),
	.s1(sum[4]),
	.s2(sum[5]),
	.s3(sum[6]),
	.s4(sum[7]),
	.salAcarreo(salAcarreo)
);
endmodule