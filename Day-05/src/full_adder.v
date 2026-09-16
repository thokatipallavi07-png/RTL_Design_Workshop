// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: full_adder (1-bit Full Adder)
// =============================================================================

`timescale 1ns / 1ps

module full_adder (
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);

    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);

endmodule
