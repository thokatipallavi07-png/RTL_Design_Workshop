// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: mux_generate (Parameterized 4:1 Multiplexer with Procedural Loop)
// =============================================================================

`timescale 1ns / 1ps

module mux_generate (
    input  wire [3:0] in,
    input  wire [1:0] sel,
    output reg        y
);

    integer k;

    always @(*) begin
        y = 1'b0;
        for (k = 0; k < 4; k = k + 1) begin
            if (sel == k)
                y = in[k];
        end
    end

endmodule
