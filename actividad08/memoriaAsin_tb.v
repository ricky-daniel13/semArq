`timescale 1ns/1ns

module memoriaAsin_tb();
reg en;
reg [4:0]dir;
reg [7:0]dataIn;
wire [7:0]dataOut;

memoriaAsin mem(
	.en(en),
	.dir(dir),
	.dataIn(dataIn),
	.dataOut(dataOut)
);

always #10
begin
	dir = dir + 1'b1;
end

initial
begin
	$readmemb("/home/jorozco/Documentos/semArq/actividad08/nombre.mem", mem.data);
	en = 0;
	dir = 0;
	#10;
end
endmodule