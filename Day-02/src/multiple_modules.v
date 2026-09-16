// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: multiple_modules (Hierarchical Module Design)
// =============================================================================

`timescale 1ns / 1ps

module sub_module1 (
    input  wire a,
    input  wire b,
    output wire y
);
    assign y = a & b;
endmodule

module sub_module2 (
    input  wire a,
    input  wire b,
    output wire y
);
    assign y = a | b;
endmodule

module multiple_modules (
    input  wire a,
    input  wire b,
    input  wire c,
    output wire y
);
    wire net1;

    sub_module1 u1 (
        .a(a),
        .b(b),
        .y(net1)
    );   // net1 = a & b

    sub_module2 u2 (
        .a(net1),
        .b(c),
        .y(y)
    );   // y = net1 | c

endmodule
