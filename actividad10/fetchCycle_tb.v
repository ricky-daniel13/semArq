`timescale 1ns/1ns

module fetchCycle_tb();

reg [6:0]
	dir,
	pc = 6'b0;
wire [31:0]inst;

fetchCycle fc(
	.dir(dir),
	.pc(pc),
	.inst(inst)
);

initial
begin
	$readmemb("MemInst_init.txt", fc.isa);
end

always #10
begin
	dir = pc;
	pc = pc + 4;
end
endmodule