`timescale 1ns/1ns

module memoriaSin_tb();
reg 
	en,
	clk = 1'b1;
reg [4:0]dir;
reg [7:0]dataIn;
wire [7:0]dataOut;

memoriaSin mem(
	.en(en),
	.clk(clk),
	.dir(dir),
	.dataIn(dataIn),
	.dataOut(dataOut)
);

always #10 
begin
	clk=!clk;
	if(clk)
	begin
		dir = dir + 1'b1;
	end
end

initial
begin
	$readmemb("nombre.mem", mem.data);
	en = 0;
	dir = 0;
	#10;
end
endmodule