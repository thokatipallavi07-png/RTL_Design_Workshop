// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: clk_gate (Integrated Clock Gating Cell Model)
// =============================================================================

`timescale 1ns / 1ps

module clk_gate (
    input  wire clk_in,
    input  wire enable,
    output wire clk_out
);

    reg enable_latched;

    always @(clk_in or enable) begin
        if (!clk_in)
            enable_latched <= enable;
    end

    assign clk_out = clk_in & enable_latched;

endmodule
