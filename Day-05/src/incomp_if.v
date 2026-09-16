// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: incomp_if (Incomplete IF Statement - Inferred Latch)
// =============================================================================

`timescale 1ns / 1ps

module incomp_if (
    input  wire i0,
    input  wire i1,
    output reg  y
);

    // Missing else clause infers an unwanted latch
    always @(*) begin
        if (i0)
            y = i1;
    end

endmodule
