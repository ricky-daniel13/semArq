`timescale 1ns/1ns

module fetchCycle_tb();

reg clk = 1'b1;
wire [31:0]inst;

fetchCycle fc(
	.clk(clk),
	.inst(inst)
);

initial
begin
	$readmemb("MemInst_init.txt", fc.isa);
end

always #10
begin
	clk = !clk;
end
endmodule