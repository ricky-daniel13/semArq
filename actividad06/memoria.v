module memoria(
	input 
		en,
		clk,
	input [7:0]
		dir,
		datoEntrada,
	output reg [7:0]datoSalida
)

always @*
begin
	if(en)	//enable en 1 = escritura
	begin
		//dir[] = datoEntrada;
	end
	else	//enable en 0 = lectura
	begin
		//datoSalida = dir[];
	end
end
