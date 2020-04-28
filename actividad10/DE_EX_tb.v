`timescale 1ns/1ns
module DE_EX_tb();
reg
	clk = 1'b1,
	regWrite;
wire zeroFlag;
wire [31:0]res;

DE_EX deex(
	.clk(clk),
	.regWrite(regWrite),
	.zeroFlag(zeroFlag),
	.res(res)
);

initial
begin
	$readmemb("MemInst_init.txt", deex.fc.isa);
	$readmemb("RBdata_init.txt", deex.rb.bank);
	#60;
	regWrite = 1'b1;
	#100;
	regWrite = 1'b0;
end

always #10
begin
	clk = !clk;
end
endmodule