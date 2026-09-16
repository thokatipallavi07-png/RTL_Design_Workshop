// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: incomp_if2 (Incomplete IF-ELSE Chain - Inferred Latch)
// =============================================================================

`timescale 1ns / 1ps

module incomp_if2 (
    input  wire i0,
    input  wire i1,
    input  wire i2,
    input  wire i3,
    output reg  y
);

    // Missing default/else condition when i0=0 and i2=0
    always @(*) begin
        if (i0)
            y = i1;
        else if (i2)
            y = i3;
    end

endmodule
