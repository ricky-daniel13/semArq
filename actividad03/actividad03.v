module actividad03(
	input entrada1,
	input entrada2,
	output salidaand,
	output salidaor,
	output salidaxor,
	output salidanot,
	output salidanand,
	output salidayes,
	output salidanor,
	output salidaxnor
);
assign salidaand = entrada1 & entrada2;
assign salidaor = entrada1 | entrada2;
assign salidaxor = entrada1 ^ entrada2;
assign salidanot = ~entrada1;
assign salidanand = ~(entrada1 & entrada2);
assign salidayes = entrada2;
assign salidanor = ~(entrada1 | entrada2);
assign salidaxnor = (entrada1 ~^ entrada2);
endmodule