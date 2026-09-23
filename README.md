# 8-bit-ALU-Verilog
An 8-bit Arithmetic Logic Unit (ALU) designed and simulated using Verilog
# 8-bit ALU using Verilog

## Project Description

An 8-bit Arithmetic Logic Unit (ALU) designed and simulated using Verilog in EDA Playground. The ALU performs arithmetic, logical, and shift operations based on a 3-bit opcode.

## Tools Used

- Verilog/SystemVerilog
- EDA Playground
- EPWave

## ALU Operations

| Opcode | Operation |
|--------|-----------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | Multiplication |
| 011 | Left Shift |
| 100 | Right Shift |
| 101 | AND |
| 110 | OR |
| 111 | XOR |

## Project Files

- `design.sv` - ALU design code
- `testbench.sv` - Testbench containing test cases

## Simulation Results

The ALU was tested with different input combinations.

Examples:

- 45 + 38 = 83
- 45 - 38 = 7
- 45 OR 38 = 47
- 45 XOR 38 = 11
- 49 × 10 = 490
- 49 << 1 = 98
- 49 >> 1 = 24
- 49 AND 10 = 0
The simulation output was verified using the log output and EPWave waveform.

## Conclusion
The 8-bit ALU successfully performs all eight specified operations according to the selected opcode. The design was simulated and verified using EDA Playground and EPWave.

The 8-bit ALU successfully performs all eight specified operations according to the selected opcode. The design was simulated and verified using EDA Playground and EPWave.
