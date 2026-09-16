// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_vsdbabysoc (Testbench for BabySoC)
// =============================================================================

`timescale 1ns / 1ps

module tb_vsdbabysoc;

    reg        reset;
    reg        VCO_IN;
    reg        ENb_CP;
    reg        ENb_VCO;
    reg        REF;
    reg        VREFH;
    wire [9:0] OUT;

    vsdbabysoc uut (
        .reset(reset),
        .VCO_IN(VCO_IN),
        .ENb_CP(ENb_CP),
        .ENb_VCO(ENb_VCO),
        .REF(REF),
        .VREFH(VREFH),
        .OUT(OUT)
    );

    // Reference clock generator
    always #5 REF = ~REF;

    initial begin
        $dumpfile("tb_vsdbabysoc.vcd");
        $dumpvars(0, tb_vsdbabysoc);

        // Initialization
        REF = 0;
        reset = 1;
        ENb_CP = 0;
        ENb_VCO = 0;
        VCO_IN = 0;
        VREFH = 1;

        #20 reset = 0;

        #200;
        $finish;
    end

endmodule
