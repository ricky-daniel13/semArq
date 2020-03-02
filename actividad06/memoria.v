module memoria(
	input 
		en,
		clk,
	input [7:0]dir,
	input [7:0]datoEntrada,
	output reg [7:0]datoSalida
);
reg [7:0] dato [0:127];
always @*
begin
	if(en)	//enable en 1 = escritura
	begin
		dato[dir] = datoEntrada;
	end
	else	//enable en 0 = lectura
	begin
		datoSalida = dato[dir];
	end
end
endmodule