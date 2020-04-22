module ALUControl(
	input [5:0]func,
	output reg [2:0]sel
);

always @*
begin
	case(func)
        6'b100000:
			sel = 3'b000; //ADD
        6'b100010: 
			sel = 3'b001; //SUB
        6'b011000: 
			sel = 3'b010; //MULT
        6'b011010: 
			sel = 3'b011; //DIV
        default: sel=4'd0;
    endcase
end

endmodule