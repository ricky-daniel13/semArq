module multiplicacion(
	input [31:0]a,
	input [31:0]b,
	input enable,
	output reg [31:0]salida
);
always@*
begin
	if(enable)
	begin
		salida = a*b;
	end
	else
	begin
		salida = 0;
	end
end
endmodule