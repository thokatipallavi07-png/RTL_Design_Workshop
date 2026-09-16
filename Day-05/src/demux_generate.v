// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: demux_generate (1:8 Demultiplexer using Procedural Loop)
// =============================================================================

`timescale 1ns / 1ps

module demux_generate (
    input  wire       in,
    input  wire [2:0] sel,
    output reg  [7:0] y
);

    integer k;

    always @(*) begin
        y = 8'b00000000;
        for (k = 0; k < 8; k = k + 1) begin
            if (sel == k)
                y[k] = in;
        end
    end

endmodule
