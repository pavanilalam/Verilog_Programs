`timescale 1ns/1ps

module tb_encoder4x2;

reg d0, d1, d2, d3;
wire y1, y0;

encoder4x2 uut (
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .y1(y1),
    .y0(y0)
);

initial begin
    $display("Time\tD0\tD1\tD2\tD3\tY1\tY0");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
             $time, d0, d1, d2, d3, y1, y0);

    d0 = 1; d1 = 0; d2 = 0; d3 = 0; #10;
    d0 = 0; d1 = 1; d2 = 0; d3 = 0; #10;
    d0 = 0; d1 = 0; d2 = 1; d3 = 0; #10;
    d0 = 0; d1 = 0; d2 = 0; d3 = 1; #10;

    $finish;
end

endmodule
