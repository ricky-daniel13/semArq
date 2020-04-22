`timescale 1ns/1ns

module BFF_tb();

reg clk = 1'b1;
reg [31:0]dirs;
wire [4:0]
	rsOut,
	rtOut,
	rdOut;
wire [5:0] funOut;
BFF bff(
	.clk(clk),
	.dirs(dirs),
	.rsOut(rsOut),
	.rtOut(rtOut),
	.rdOut(rdOut),
	.funOut(funOut)
);
initial
begin
	dirs = 32'b00000010001101000111000000011010;	//rs6,rt20,rd14 func011010
	#10;
	dirs = 32'b00000010110011010110000000100010;	//rs26,rt13,rd12 func100010
	#10;
end

always #10
begin
clk = !clk;
end
endmodule