`timescale 1ns/1ps

module ring_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] q;

    ring_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial
    begin
        $monitor("Time = %0t | Reset = %b | Counter = %b",
                  $time, reset, q);

        clk = 0;
        reset = 1;

        #10;
        reset = 0;

        #50;

        $finish;
    end

endmodule