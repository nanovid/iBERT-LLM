# Unified IBERT Transformer Hardware Accelerator
A complete hardware-software co-design stack implementing a fully custom, integer-only IBERT Language Model accelerator on an FPGA. This project covers the full RTL-to-Silicon development lifecycle—from basic arithmetic units up to a multi-clock domain pipelined transformer execution block deployed on the PYNQ-Z2 ARM+FPGA SoC platform.

## 🚀 Project Overview & Architecture
The overarching goal of this project is to construct a hardware accelerator for an IBERT Transformer Layer utilizing integer-only arithmetics to optimize throughput and energy efficiency on FPGA hardware.

Key Architectural Features:
Systolic Core: A parameterizable 2D grid of independent Processing Elements (PEs) executing nearest-neighbor matrix multiplication.

Interleaved Memory Architecture: Input/output matrices are cyclic-partitioned across parallel RAM banks to ensure collision-free streaming access.

Dual-Buffered Memory: Advanced Ping-Pong address generators slice large matrices into blocks, enabling simultaneous execution and memory loading for continuous processing.

Dual-Clock Isolation: Lower-speed interface wrappers feed data from the CPU at a slower clock (clk), while the internal computing blocks and memory interfaces run on a high-frequency fast clock (fclk).

## 🛠️ Technical Progression & Accomplishments
### Phase 1: Streaming Arithmetic Foundations
Goal: Establish foundational streaming datapaths with single-cycle latency constraints.

Designed an Accumulate (ACC) module to sum streaming vectors and a Multiply-Accumulate (MAC) module for dot products.

Created a Maximum (MAX) tracker and scaled the MAC units into a parameterizable parallel array using SystemVerilog generate blocks.

Handled precise synchronous resets and initialization signals to flush accumulators without dropping active clock-cycle data.

### Phase 2: Multi-Cycle & Pipelined Activations
Goal: Implement complex mathematical operations using Finite State Machines (FSMs) and high-throughput pipelines.

Division (DIV): Built a multi-cycle state machine implementing a shifting division algorithm, utilizing a Leading One Position Detector (LOPD) to extract base-2 logarithms.

Exponent (EXP): Engineered a fully pipelined, single-cycle integer approximation of exponentiation using a second-order polynomial. Handled dynamic range scaling by widening internal precision to twice the data width.

GELU: Created a matching single-cycle pipeline for the Gaussian Error Linear Unit activation, evaluating signs, bounds clamping, and absolute value scaling via native bit-level inspection.

### Phase 3: 2D Systolic Array & Memory Management
Goal: Scale the compute units into a massively parallel grid and resolve the memory bandwidth wall.

Processing Elements (PEs): Designed non-blocking MAC blocks that pass registered operands to adjacent neighbors while shifting computed sums horizontally.

Systolic Grid: Wired a parametric 2D Nearest-Neighbor grid to execute matrix multiplications.

Cyclic Partitioning: Wrote address generators (mem_write_A/B, mem_read_D) that map streaming row-serial or column-serial matrices into discrete memory banks for simultaneous multi-word fetches.

Ping-Pong Buffering: Implemented double-buffered address states to slice matrices into sub-blocks, allowing dynamic physical memory overwriting without stalling the compute array.

### Phase 4: End-to-End IBERT Integration
Goal: Stitch the components into a complete Transformer layer and deploy to physical silicon.

Attention Head: Multiplexed the Systolic Array to compute Query (Q), Key (K), and Value (V) projections. Handled requantization scaling, the transpose-multiplication, and integrated the Softmax pipeline.

MM + LayerNorm / GELU: Fused dense matrix multiplications with residual tracking (skip connections), matrix addition cores, and bias-adding requantization networks.

Deployment: Wrapped the system in standard AXI-Stream interfaces (tdata, tvalid, tready, tlast), synthesized the netlist via Xilinx Vivado, mapped it to the PYNQ-Z2 FPGA, and verified the hardware using an ARM Python driver.

## 💻 Tech Stack
Hardware Description: SystemVerilog

Simulation & Verification: Verilator (C++), Xilinx xsim, GTKWave

Synthesis & Implementation: Xilinx Vivado

Target Hardware: PYNQ-Z2 (Zynq-7000 ARM/FPGA SoC)

Host Interfacing: Python, AXI-Stream Memory Mapped protocols
