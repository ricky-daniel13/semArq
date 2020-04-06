`timescale 1ns/1ns

module BFF_tb();

reg clk = 1'b1;
reg [14:0]dirs;
wire [4:0]
	rsOut,
	rtOut,
	rdOut;
BFF bff(
	.clk(clk),
	.dirs(dirs),
	.rsOut(rsOut),
	.rtOut(rtOut),
	.rdOut(rdOut)
);
initial
begin
	dirs = 15'b101101010011110;	//rs22,rt20,rd30
	#10;
	dirs = 15'b101011101011100;	//rs21,rt26,rd28
	#10;
end

always #10
begin
clk = !clk;
end
endmodule