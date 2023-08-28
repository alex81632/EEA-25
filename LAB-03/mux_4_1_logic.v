module mux_4_1_logic (
    input [3:0] IN,
    input [1:0] sel,
    input EN,
    output reg e
);

    always @(*) begin
    	if (~EN)
    		e = 4'b0000;
    	else begin
		case(sel)
		    2'b00: e = IN[0];
		    2'b01: e = IN[1];
		    2'b10: e = IN[2];
		    2'b11: e = IN[3];
		    default: e = 4'b0000;
		endcase
	end
    end
endmodule
