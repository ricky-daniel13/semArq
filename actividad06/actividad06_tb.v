`timescale 1ns/1ns

module actividad06_tb();
reg [7:0]
	a,
	b = 8'b0;
reg [2:0]sel;
reg
	en,
	clk = 1'b0;
wire [7:0]datoSalida;
wire zeroFlag;

actividad06 act(
	.a(a),
	.b(b),
	.sel(sel),
	.zeroFlag(zeroFlag),
	.en(en),
	.clk(clk),
	.datoSalida(datoSalida)
);

always #5
begin
	clk = !clk;
	if(clk)
	begin
		b = b+8'd1;
	end
end

initial
begin
	//Pruebas Escritura
	a = 8'd74 - b;		//J
	sel = 3'b000;
	en = 1'b1;
	#10;
	a = 8'd111 - b;	//o
	#10;
	a = 8'd115 - b;	//s
	#10;
	a = 8'd101 - b;	//e
	#10;
	a = 8'd32 - b;	// espacio
	#10;
	a = 8'd73 - b;		//I
	#10;
	a = 8'd118 - b;	//v
	#10;
	a = 8'd97 - b;		//a
	#10;
	a = 8'd110 - b;	//n
	#10;
	a = 8'd32 - b;	// espacio
	#10;
	a = 8'd50 - b;	// 2
	#10;
	a = 8'd49 - b;	// 1
	#10;
	a = 8'd53 - b;	// 5
	#10;
	a = 8'd54 - b;	// 6
	#10;
	a = 8'd54 - b;	// 6
	#10;
	a = 8'd49 - b;	// 1
	#10;
	a = 8'd51 - b;	// 3
	#10;
	a = 8'd57 - b;	// 9
	#10;
	a = 8'd57 - b;	// 9
	#10;
	a = 8'd32 - b;	// espacio
	#10;
	a = 8'd79 - b;		//O
	#10;
	a = 8'd114 - b;	//r
	#10;
	a = 8'd111 - b;	//o
	#10;
	a = 8'd122 - b;	//z
	#10;
	a = 8'd99 - b;		//c
	#10;
	a = 8'd111 - b;	//o
	#10;
	a = 8'd32 - b;	// espacio
	#10;
	a = 8'd68 - b;		//D
	#10;
	a = 8'd49 - b;		//1
	#10;
	a = 8'd51 - b;		//3
	#10;
	a = 8'd32 - b;	// espacio
	#10;
	a = 8'd84 - b;		//T
	#10;
	a = 8'd111 - b;	//o
	#10;
	a = 8'd114 - b;	//r
	#10;
	a = 8'd114 - b;	//r
	#10;
	a = 8'd101 - b;	//e
	#10;
	a = 8'd122 - b;	//z
	#10;
	//Pruebas Lectura
	b = 8'b0;
	en = 1'b0;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
	#10;
end
endmodule