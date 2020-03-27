module actividad08(
	input 
		en,
		clk,
	input [4:0]dir,
	input [7:0]dataIn,
	output [7:0]dataOuts,
	output [7:0]dataOuta
);

memoriaSin mems(
	.en(en),
	.clk(clk),
	.dir(dir),
	.dataIn(dataIn),
	.dataOut(dataOuts)
);

memoriaAsin mema(
	.en(en),
	.dir(dir),
	.dataIn(dataIn),
	.dataOut(dataOuta)
);

endmodule