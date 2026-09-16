// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: vsdbabysoc (Top-Level BabySoC Design)
// =============================================================================

`timescale 1ns / 1ps

module vsdbabysoc (
    input  wire       reset,
    input  wire       VCO_IN,
    input  wire       ENb_CP,
    input  wire       ENb_VCO,
    input  wire       REF,
    input  wire       VREFH,
    output wire [9:0] OUT
);

    wire       soc_clk;
    wire [9:0] rv_to_dac;

    // PLL instance for clock generation
    avsddpll pll_inst (
        .ENb_CP(ENb_CP),
        .ENb_VCO(ENb_VCO),
        .REF(REF),
        .VCO_IN(VCO_IN),
        .CLK(soc_clk)
    );

    // RISC-V Processor Core
    rvmyth core_inst (
        .CLK(soc_clk),
        .reset(reset),
        .OUT(rv_to_dac)
    );

    // Digital-to-Analog Converter
    avsddac dac_inst (
        .dac_in(rv_to_dac),
        .vrefh(VREFH),
        .dac_out(OUT)
    );

endmodule
