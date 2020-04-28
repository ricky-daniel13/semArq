module fetchCycle(
	input clk,
	output reg [31:0]inst
);
reg [7:0] isa [0:127];
reg [6:0]pc = 7'b0;
always @(posedge clk)
begin
	inst = {isa[pc],isa[pc+1],isa[pc+2],isa[pc+3]};
	pc = pc + 4;
end
endmodule