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
	//test 1 sum
	a = 8'd4;
	b = 8'd100;
	sel = 3'b000;
	#10;
	//test 2 substraction
	a = 8'd10;
	b = 8'd10;
	sel = 3'b001;
	#10;
	//test 3 multiplication
	a = 8'd20;
	b = 8'd10;
	sel = 3'b010;
	#10;
	//test 4 division
	a = 8'd100;
	b = 8'd2;
	sel = 3'b011;
	#10;
	//test 5 AND
	a = 8'd122;
	b = 8'd100;
	sel = 3'b100;
	#10;
	//test 6 OR
	a = 8'd232;
	b = 8'd111;
	sel = 3'b101;
	#10;
	//test 7 NAND
	a = 8'd122;
	b = 8'd100;
	sel = 3'b110;
	#10;
end
endmodule