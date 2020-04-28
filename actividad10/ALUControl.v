module ALUControl(
	input [5:0]func,
	output reg [3:0]sel
);

always @*
begin
	case(func)
        6'b100000:
			sel = 4'b0000; //ADD
        6'b100010: 
			sel = 4'b0001; //SUB
        6'b011000: 
			sel = 4'b0010; //MULT
        6'b011010: 
			sel = 4'b0011; //DIV
    endcase
end

endmodule