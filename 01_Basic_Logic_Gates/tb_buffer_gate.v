`timescale 1ns/1ps

module tb_buffer_gate;

reg a;
wire y;

buffer_gate uut (
    .a(a),
    .y(y)
);

initial begin
    $display("Time\tInput\tOutput");
    $monitor("%0t\t%b\t%b", $time, a, y);

    a = 0; #10;
    a = 1; #10;

    $finish;
end

endmodule
