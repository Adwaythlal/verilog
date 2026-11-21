`timescale 1ns/1ps

module testbench;

    reg in;
    wire out;

    // Instantiate DUT
    top_module uut (
        .in(in),
        .out(out)
    );

    initial begin
        $monitor("Time=%0t | in=%b | out=%b", $time, in, out);

        in = 0;
        #10;

        in = 1;
        #10;

        in = 0;
        #10;

        in = 1;
        #10;

        $finish;
    end

endmodule