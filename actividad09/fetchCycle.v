module fetchCycle(
	input [6:0]
		dir,
		pc,
	output [31:0]inst
);
reg [7:0] isa [0:127];
assign inst = {isa[dir],isa[dir+1],isa[dir+2],isa[dir+3]};
endmodule