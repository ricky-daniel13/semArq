module BFF(
	input clk,
	input [14:0]
		dirs,
	output [4:0]
		rsOut,
		rtOut,
		rdOut,
);

always @(posedge clk)
begin
	rsOut = dirs[0:4];
	rtOut = dirs[5:9];
	rdOut = dirs[10:14];
end
endmodule