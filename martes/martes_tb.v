`timescale 1ns/1ns

module martes_tb();
reg [6:0]dir = 7'd0;
reg
	en,
	clk = 1'b1;
wire [31:0]dataOut;
wire zeroFlag;

martes mar(
	.dir(dir),
	.en(en),
	.clk(clk),
	.dataOut(dataOut),
	.zeroFlag(zeroFlag)
);

always #1
begin
	clk = !clk;
end

initial
begin
	//Write test
	en = 1'b1;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;	//after 10 posedge signals
	//Read test
	dir = 7'd0;
	en = 1'b0;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
	dir = dir+7'd4;
	#100;
end
endmodule