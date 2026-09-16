// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: bad_mux (Synthesis-Simulation Mismatch Example)
// Note: Incomplete sensitivity list causes RTL vs GLS mismatch.
// =============================================================================

`timescale 1ns / 1ps

module bad_mux (
    input  wire i0,
    input  wire i1,
    input  wire sel,
    output reg  y
);

    // Incomplete sensitivity list: only sensitive to sel, not i0, i1
    always @(sel) begin
        if (sel)
            y <= i1;
        else
            y <= i0;
    end

endmodule
