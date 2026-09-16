// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: rvmyth (RISC-V Myth Core for BabySoC)
// =============================================================================

`timescale 1ns / 1ps

module rvmyth (
    input  wire       CLK,
    input  wire       reset,
    output reg  [9:0] OUT
);

    // Internal program counter and register file
    reg [31:0] pc;
    reg [31:0] regfile [0:31];
    integer i;

    always @(posedge CLK or posedge reset) begin
        if (reset) begin
            pc <= 32'd0;
            OUT <= 10'd0;
            for (i = 0; i < 32; i = i + 1)
                regfile[i] <= 32'd0;
        end else begin
            pc <= pc + 32'd4;
            // Simple counter/accumulator behavior demonstrating DAC drive
            OUT <= OUT + 10'd1;
        end
    end

endmodule
