// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_dff_async_set (Testbench for Asynchronous Set DFF)
// =============================================================================

`timescale 1ns / 1ps

module tb_dff_async_set;

    reg clk;
    reg async_set;
    reg d;
    wire q;

    dff_async_set uut (
        .clk(clk),
        .async_set(async_set),
        .d(d),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("tb_dff_async_set.vcd");
        $dumpvars(0, tb_dff_async_set);

        clk = 0;
        async_set = 1;
        d = 0;

        #12 async_set = 0;
        #8  d = 0;
        #10 d = 1;
        #10 d = 0;
        #6  async_set = 1; // Asynchronous set pulse
        #8  async_set = 0;
        #10 d = 0;

        #20 $finish;
    end

endmodule
