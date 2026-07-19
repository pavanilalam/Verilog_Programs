# 4:1 Multiplexer

A 4:1 multiplexer selects one of four input signals (`i0`, `i1`, `i2`, or `i3`) based on the 2-bit select signal (`sel`).

## Files

- `mux4x1.v` – Verilog design
- `tb_mux4x1.v` – Testbench
- `mux4x1_waveform.png` – Simulation waveform

## Truth Table

| sel | Output |
|-----|--------|
| 00  | i0 |
| 01  | i1 |
| 10  | i2 |
| 11  | i3 |


