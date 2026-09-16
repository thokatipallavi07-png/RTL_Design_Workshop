// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: avsddpll (Analog/Mixed-Signal PLL Model for BabySoC)
// =============================================================================

`timescale 1ns / 1ps

module avsddpll (
    input  wire ENb_CP,
    input  wire ENb_VCO,
    input  wire REF,
    input  wire VCO_IN,
    output reg  CLK
);

    initial CLK = 0;

    // Behavioral representation of PLL frequency generation
    always @(REF or ENb_VCO) begin
        if (!ENb_VCO) begin
            CLK = REF;
        end else begin
            CLK = 0;
        end
    end

endmodule
