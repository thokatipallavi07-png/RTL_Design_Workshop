// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_dff_const3 (Testbench for dff_const3)
// =============================================================================

`timescale 1ns / 1ps

module tb_dff_const3;

    reg clk;
    reg reset;
    wire q;
    wire q1;

    dff_const3 uut (
        .clk(clk),
        .reset(reset),
        .q(q),
        .q1(q1)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("tb_dff_const3.vcd");
        $dumpvars(0, tb_dff_const3);

        clk = 0;
        reset = 1;

        #12 reset = 0;
        #40 reset = 1;
        #10 reset = 0;

        #40 $finish;
    end

endmodule
