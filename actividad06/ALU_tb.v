`timescale 1ns/1ns

module ALU_tb();
reg [7:0]a;
reg [7:0]b;
reg [2:0]sel;
wire zero;
wire [7:0]res;
ALU alu(
	.a(a),
	.b(b),
	.sel(sel),
	.zeroFlag(zero),
	.res(res)
);
initial
begin
	//prueba 1 suma
	a = 8'd4;
	b = 8'd100;
	sel = 3'b000;
	#10;
	//prueba 2 resta
	a = 8'd10;
	b = 8'd10;
	sel = 3'b001;
	#10;
	//prueba 3 multiplicacion
	a = 8'd20;
	b = 8'd10;
	sel = 3'b010;
	#10;
	//prueba 4 division
	a = 8'd100;
	b = 8'd2;
	sel = 3'b011;
	#10;
	//prueba 5 AND
	a = 8'd122;
	b = 8'd100;
	sel = 3'b100;
	#10;
	//prueba 6 OR
	a = 8'd232;
	b = 8'd111;
	sel = 3'b101;
	#10;
	//prueba 7 NAND
	a = 8'd122;
	b = 8'd100;
	sel = 3'b110;
	#10;
end
endmodule