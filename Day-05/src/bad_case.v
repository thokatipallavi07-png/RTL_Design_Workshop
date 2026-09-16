// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: bad_case (Overlapping CASE Conditions with Wildcard casez)
// =============================================================================

`timescale 1ns / 1ps

module bad_case (
    input  wire [1:0] sel,
    input  wire i0,
    input  wire i1,
    input  wire i2,
    input  wire i3,
    output reg  y
);

    // 2'b10 matches both 2'b10 and 2'b1? resulting in overlapping priority
    always @(*) begin
        casez (sel)
            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b1?: y = i3;
        endcase
    end

endmodule
