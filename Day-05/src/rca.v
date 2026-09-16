// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: rca (Parameterized N-bit Ripple Carry Adder using Generate Loop)
// =============================================================================

`timescale 1ns / 1ps

module rca #(
    parameter WIDTH = 4
)(
    input  wire [WIDTH-1:0] a,
    input  wire [WIDTH-1:0] b,
    input  wire             cin,
    output wire [WIDTH-1:0] sum,
    output wire             cout
);

    wire [WIDTH:0] carry;
    assign carry[0] = cin;
    assign cout     = carry[WIDTH];

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : fa_gen
            full_adder FA (
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i]),
                .sum(sum[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate

endmodule
