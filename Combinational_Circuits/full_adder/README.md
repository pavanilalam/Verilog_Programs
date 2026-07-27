# Full Adder

A Full Adder is a combinational circuit that adds three 1-bit binary inputs (`A`, `B`, and `Cin`) and produces a `Sum` and a `Carry` output.

## Files

- `full_adder.v` – Verilog design
- `tb_full_adder.v` – Testbench
- `full_adder.png` – Simulation waveform

## Truth Table

| A | B | Cin | Sum | Carry |
|---|---|-----|-----|-------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

