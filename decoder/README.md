# 2-to-4 Decoder using Verilog

## Description
This project implements a 2-to-4 Decoder using Verilog HDL with an Enable input.

## Truth Table

| EN | A1 | A0 | Y3 Y2 Y1 Y0 |
|----|----|----|-------------|
|0|X|X|0000|
|1|0|0|0001|
|1|0|1|0010|
|1|1|0|0100|
|1|1|1|1000|

## Files

- decoder_2to4.v
- decoder_2to4_tb.v

## Tools Used

- Xilinx Vivado
- ModelSim
- Icarus Verilog
- GTKWave

