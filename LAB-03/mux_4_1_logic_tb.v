`include "mux_4_1_logic.v"
`timescale 1us/1us // time unit / simulation precision

module mux_4_1_tb;

    reg [3:0] IN;
    reg [1:0] S;
    reg EN;
    wire Y;
    
    mux_4_1_logic uut (.IN(IN), .sel(S), .EN(EN), .e(Y));
    
    initial begin
        $dumpfile ("mux_4_1_tb.vcd");
        $dumpvars (0 , mux_4_1_tb);
    end
    
    initial begin
        // 10 Test cases
        // 1
        EN = 1; IN = 4'b0000; S = 2'b00; #10;
        // 2
        EN = 1; IN = 4'b0010; S = 2'b01; #10;
        // 3
        EN = 1; IN = 4'b0100; S = 2'b10; #10;
        // 4
        EN = 1; IN = 4'b0000; S = 2'b11; #10;
        // 5
        EN = 1; IN = 4'b1111; S = 2'b00; #10;
        // 6
        EN = 1; IN = 4'b1111; S = 2'b01; #10;
        // 7
        EN = 1; IN = 4'b1011; S = 2'b10; #10;
        // 8
        EN = 1; IN = 4'b1111; S = 2'b11; #10;
        // 9
        EN = 0; IN = 4'b0000; S = 2'b00; #10;
        // 10
        EN = 0; IN = 4'b1111; S = 2'b11; #10;
    end

endmodule
