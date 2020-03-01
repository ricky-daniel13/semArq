`timescale 1ns/1ns

module memoria_tb();
reg 
	clk = 1'b0,
	en;
reg [6:0]dir;
reg [7:0]datoEntrada;
wire [7:0]datoSalida;
//always #10 
//begin
//	clk=!clk;
//end

initial
begin
	en = 1'b1;
	datoEntrada = 8'd73;
	dir = 7'b0;
	#10;
	en = 1'b0;
	dir = 7'b0;
	#10;
end
endmodule