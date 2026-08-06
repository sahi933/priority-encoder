
# 2-to-4 Decoder using Verilog HDL

## Overview

This project implements a **2-to-4 Decoder** in Verilog HDL.

A decoder converts an **n-bit binary input** into **2ⁿ output lines**, with only one output active at a time.

For a 2-to-4 decoder:
- Inputs: A1, A0
- Outputs: Y0, Y1, Y2, Y3

## Truth Table

| A1 | A0 | Y3 | Y2 | Y1 | Y0 |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 |

## Files

- `decoder.v` – Verilog design
- `decoder_tb.v` – Testbench
- `decoder.vcd` – Waveform file
- `simulation_result.png` – Simulation screenshot

## Software Used

- Xilinx Vivado
- ModelSim
- Icarus Verilog
- GTKWave

## Compilation

```bash
iverilog -o decoder decoder.v decoder_tb.v
```

## Simulation

```bash
vvp decoder
```

## View Waveform

```bash
gtkwave decoder.vcd
```

## Expected Output

```
A1 A0 | Y3 Y2 Y1 Y0
0  0  | 0  0  0  1
0  1  | 0  0  1  0
1  0  | 0  1  0  0
1  1  | 1  0  0  0
```

## Author

Your Name