// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_rca (Testbench for 4-bit Ripple Carry Adder)
// =============================================================================

`timescale 1ns / 1ps

module tb_rca;

    localparam WIDTH = 4;

    reg  [WIDTH-1:0] a;
    reg  [WIDTH-1:0] b;
    reg              cin;
    wire [WIDTH-1:0] sum;
    wire             cout;

    rca #(.WIDTH(WIDTH)) uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("tb_rca.vcd");
        $dumpvars(0, tb_rca);

        $display("-----------------------------------------------");
        $display("Time\tA\tB\tCin\t|\tSum\tCout");
        $display("-----------------------------------------------");
        $monitor("%0t\t%h\t%h\t%b\t|\t%h\t%b", $time, a, b, cin, sum, cout);

        a = 4'h0; b = 4'h0; cin = 0; #10;
        a = 4'h3; b = 4'h5; cin = 0; #10;
        a = 4'h7; b = 4'h2; cin = 1; #10;
        a = 4'hF; b = 4'h1; cin = 0; #10;
        a = 4'hE; b = 4'h3; cin = 1; #10;
        a = 4'hF; b = 4'hF; cin = 1; #10;

        #20 $finish;
    end

endmodule
