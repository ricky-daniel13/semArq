module halfAdder(
	input entrada1,
	input entrada2,
	output suma,
	output acarreo
);
	assign suma = entrada1 ^ entrada2;
	assign acarreo = entrada1  & entrada2;
endmodule