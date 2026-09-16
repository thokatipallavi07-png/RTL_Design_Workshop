// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: dff_const3 (Constant Flip-Flop Optimization Example 3)
// =============================================================================

`timescale 1ns / 1ps

module dff_const3 (
    input  wire clk,
    input  wire reset,
    output reg  q,
    output reg  q1
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q  <= 1'b1;
            q1 <= 1'b0;
        end else begin
            q1 <= 1'b1;
            q  <= q1;
        end
    end

endmodule
