// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: dff_syncres (D Flip-Flop with Synchronous Reset)
// =============================================================================

`timescale 1ns / 1ps

module dff_syncres (
    input  wire clk,
    input  wire sync_reset,
    input  wire d,
    output reg  q
);

    always @(posedge clk) begin
        if (sync_reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule
