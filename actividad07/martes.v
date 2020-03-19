module martes(
	input [6:0]dir,
	input
		en,
		clk,
	output [31:0]dataOut,
	output zeroFlag
);
wire [31:0]
	inst, instbuf, res, w_res;
wire [6:0]
	dirout;
wire w_en, w_enbuf;

rom ROM(
	.dir(dir),
	.inst(inst)
);

bufferrom bufrom(
	.clk(clk),
	.en(en),
	.inst(inst),
	.ins(instbuf),
	.enout(w_en)
);

ALU alu(
	.a(instbuf[21:11]),
	.b(instbuf[10:0]),
	.sel(instbuf[24:22]),
	.zeroFlag(zeroFlag),
	.res(res)
);

bufferalu bufalu(
	.clk(clk),
	.en(w_en),
	.dir(instbuf[31:25]),
	.res(res),
	.dirout(dirout),
	.resout(w_res),
	.enout(w_enbuf)
);

memoria mem(
	.en(w_enbuf),
	.dir(dirout),
	.dataIn(w_res),
	.dataOut(dataOut)
);
endmodule