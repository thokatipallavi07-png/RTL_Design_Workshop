// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: good_mux (2:1 Multiplexer)
// Description: Behavioral RTL model of a 2-to-1 Multiplexer
// =============================================================================

`timescale 1ns / 1ps

module good_mux (
    input  wire i0,
    input  wire i1,
    input  wire sel,
    output reg  y
);

    always @(*) begin
        if (sel)
            y = i1;
        else
            y = i0;
    end

endmodule
