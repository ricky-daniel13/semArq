`timescale 1ns/1ns

module memoria_tb();
clk = 0;
reg 
	en,
	clk = 1'b0;
reg [7:0]
	dir,
	datoEntrada;
wire [7:0]datoSalida;

memoria mem(
	.en(en),
	.clk(clk),
	.dir(dir),
	.datoEntrada(datoEntrada),
	.datoSalida(datoSalida)
);

always #10 
begin
	clk=!clk;
end

initial
begin
	en = 1'b1;
	datoEntrada = 8'd73;
	dir = 8'b0;
	#10;
	en = 1'b0;
	dir = 8'b0;
	#10;
end
endmodule