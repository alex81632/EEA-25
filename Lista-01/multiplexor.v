// Multiplexador
// O barramento do multiplexador é de 5 bits por padrão.
// Se sel = 0, a entrada in0 é transferida para a saída mux_out.
// Se sel = 1, a entrada in1 é transferida para a saída mux_out.
// Parametrize as entradas e saídas do multiplexador e atribua um valor padrão para a largura dos barramentos de entrada e saída como sendo igual a 5

module multiplexor(
    input [4:0] in0,
    input [4:0] in1,
    input sel,
    output [4:0] mux_out
);

    assign mux_out = sel ? in1 : in0;

endmodule