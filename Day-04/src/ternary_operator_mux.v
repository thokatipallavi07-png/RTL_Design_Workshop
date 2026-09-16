// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: ternary_operator_mux (2:1 MUX using Ternary Operator)
// =============================================================================

`timescale 1ns / 1ps

module ternary_operator_mux (
    input  wire i0,
    input  wire i1,
    input  wire sel,
    output wire y
);

    assign y = sel ? i1 : i0;

endmodule
