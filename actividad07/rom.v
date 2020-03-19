module rom(
	input [6:0]dir,
	output [31:0]inst
);
reg [7:0] isa [0:127];
assign inst = {isa[dir+3],isa[dir+2],isa[dir+1],isa[dir]};

initial
begin
	$readmemb("/home/jorozco/Documentos/semArq/actividad07/rom.mem", isa);
end
endmodule