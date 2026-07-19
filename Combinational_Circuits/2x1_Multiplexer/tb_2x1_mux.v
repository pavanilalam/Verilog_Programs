`timescale 1ns/1ps

module tb_mux2x1;

reg a, b, sel;
wire y;

mux2x1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $display("Time\tA\tB\tSEL\tY");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, a, b, sel, y);

    a = 0; b = 0; sel = 0; #10;
    a = 0; b = 1; sel = 0; #10;
    a = 1; b = 0; sel = 0; #10;
    a = 1; b = 1; sel = 0; #10;

    a = 0; b = 0; sel = 1; #10;
    a = 0; b = 1; sel = 1; #10;
    a = 1; b = 0; sel = 1; #10;
    a = 1; b = 1; sel = 1; #10;

    $finish;
end

endmodule
