# 2:4 Decoder

A 2:4 decoder converts a 2-bit binary input into one of four active-high output lines.

## Files

- `decoder2x4.v` – Verilog design
- `tb_decoder2x4.v` – Testbench
- `decoder2x4_waveform.png` – Simulation waveform

## Truth Table

| A | B | Y0 | Y1 | Y2 | Y3 |
|---|---|----|----|----|----|
| 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 |
