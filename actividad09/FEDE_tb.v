`timescale 1ns/1ns
module FEDE_tb();

reg [6:0]
	dir,
	pc = 6'b0;
reg
	clk = 1'b1,
	regWrite;
reg [31:0]writeData;
wire [5:0]funct;
wire [31:0]
	readData1,
	readData2;

FEDE fede(
	.clk(clk),
	.regWrite(regWrite),
	.writeData(writeData),
	.dir(dir),
	.pc(pc),
	.funct(funct),
	.readData1(readData1),
	.readData2(readData2)
);
	
always #10
begin
	clk = !clk;
	dir = pc;
	pc = pc + 4;
end
initial
begin
	$readmemb("MemInst_init.txt", fede.fc.isa);
	$readmemb("RBdata_init.txt", fede.rb.bank);
end
endmodule