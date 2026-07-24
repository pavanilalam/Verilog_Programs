`timescale 1ns/1ps

module tb_decoder2x4;

reg a, b;
wire y0, y1, y2, y3;

decoder2x4 uut (
    .a(a),
    .b(b),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin
    $display("Time\tA\tB\tY0\tY1\tY2\tY3");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
             $time, a, b, y0, y1, y2, y3);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
end

endmodule
