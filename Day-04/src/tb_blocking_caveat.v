// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_blocking_caveat (Testbench for blocking_caveat)
// =============================================================================

`timescale 1ns / 1ps

module tb_blocking_caveat;

    reg a;
    reg b;
    reg c;
    wire d;

    blocking_caveat uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d)
    );

    initial begin
        $dumpfile("tb_blocking_caveat.vcd");
        $dumpvars(0, tb_blocking_caveat);

        a = 0; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 0; b = 1; c = 1; #10;
        a = 0; b = 0; c = 1; #10;

        #20 $finish;
    end

endmodule
