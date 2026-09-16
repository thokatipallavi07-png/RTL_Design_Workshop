// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_dff_const2 (Testbench for dff_const2)
// =============================================================================

`timescale 1ns / 1ps

module tb_dff_const2;

    reg clk;
    reg reset;
    wire q;

    dff_const2 uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("tb_dff_const2.vcd");
        $dumpvars(0, tb_dff_const2);

        clk = 0;
        reset = 1;

        #12 reset = 0;
        #30 reset = 1;
        #10 reset = 0;

        #30 $finish;
    end

endmodule
