Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** Xilinx

**DOI**: https://docs.amd.com/v/u/en-US/ds190-Zynq-7000-Overview

**Authors**: n/a

**Publication Year**: 2018

**Country of Study**: USA

**Tags**: #xillinx #FPGA #architecture #smd #datasheet

```ad-abstract
title: Abstract
collapse: open
The Zynq®-7000 family is based on the Xilinx SoC architecture. These products integrate a feature-rich dual-core or single-core ARM®
Cortex™-A9 based processing system (PS) and 28 nm Xilinx programmable logic (PL) in a single device. The ARM Cortex-A9 CPUs are
the heart of the PS and also include on-chip memory, external memory interfaces, and a rich set of peripheral connectivity interfaces.
```

**Embed to Paper**: ![[Zynq-7000-Overview.pdf]]

## Summary

The **Zynq-7000** family from Xilinx is a **System-on-Chip (SoC)** architecture that integrates a **dual-core or single-core ARM Cortex-A9 Processing System (PS)** with **Xilinx 28nm Programmable Logic (PL)**. This combination provides a flexible, high-performance platform for embedded applications, bridging the gap between traditional FPGAs and ASICs.

---

### **1. Zynq-7000 SoC First Generation Architecture**

The architecture consists of two main components:

- **Processing System (PS)** – ARM Cortex-A9-based CPU subsystem.
    
- **Programmable Logic (PL)** – FPGA-like fabric for custom hardware acceleration.
    

#### **Processing System (PS)**

##### **ARM Cortex-A9 Based Application Processor Unit (APU)**

- **CPU Cores**:
    
    - Dual-core or single-core ARM Cortex-A9 MPCore.
        
    - **2.5 DMIPS/MHz per CPU**, operating at up to **1 GHz** (varies by device).
        
    - **ARMv7-A architecture** with **TrustZone security**, **Thumb-2 instruction set**, and **NEON SIMD engine**.
        
    - **Single/double-precision Floating Point Unit (FPU)**.
        
- **Cache Hierarchy**:
    
    - **32 KB L1 instruction & data cache per core** (4-way set-associative).
        
    - **512 KB shared L2 cache** (8-way set-associative).
        
- **On-Chip Memory (OCM)**:
    
    - **256 KB RAM** accessible by CPU and PL.
        
- **External Memory Interfaces**:
    
    - Supports **DDR3, DDR3L, DDR2, LPDDR2** (16/32-bit, up to 1GB).
        
    - **Static memory support** (NOR, NAND, Quad-SPI, SRAM).
        
- **8-Channel DMA Controller**:
    
    - Supports **memory-to-memory, peripheral-to-memory, scatter-gather transfers**.
        

##### **I/O Peripherals and Interfaces**

- **Networking**:
    
    - **2x 10/100/1000 Ethernet MACs** (IEEE 802.3, IEEE 1588 PTP).
        
- **USB**:
    
    - **2x USB 2.0 OTG** (supports host/device modes).
        
- **Serial Interfaces**:
    
    - **2x CAN 2.0B, 2x UART, 2x SPI, 2x I2C, 2x SD/SDIO**.
        
- **GPIO**:
    
    - Up to **54 MIO (Multiplexed I/O) pins** + **64 EMIO (Extended MIO) pins** connected to PL.
        

##### **Interconnect**

- **AMBA AXI-based** high-bandwidth interconnect.
    
- **Quality of Service (QoS)** for latency/bandwidth control.
    

---

### **2. Programmable Logic (PL)**

The PL is based on **Xilinx 7-series FPGA technology** and includes:

- **Configurable Logic Blocks (CLBs)** with **LUTs, flip-flops, and adders**.
    
- **36 Kb Block RAM** (dual-port, configurable as 18 Kb blocks).
    
- **DSP Slices** (18x25 multipliers, 48-bit accumulators).
    
- **Programmable I/O** (supports LVDS, LVCMOS, SSTL).
    
- **PCIe Gen2 x4/x8** (Root Complex or Endpoint).
    
- **Serial Transceivers** (up to **12.5 Gb/s**).
    
- **XADC (Analog-to-Digital Converter)** – **12-bit, 1 MSPS**, monitors on-chip temp/voltage.
    

#### **Key PL Features**

- **Clock Management**:
    
    - **MMCM (Mixed-Mode Clock Manager) & PLLs** for jitter filtering and frequency synthesis.
        
- **High-Performance AXI Ports**:
    
    - **Four 64-bit/32-bit AXI interfaces** for low-latency PL-to-PS communication.
        
- **Accelerator Coherency Port (ACP)**:
    
    - **64-bit AXI slave interface** for **cache-coherent** access from PL to CPU.
        

---

### **3. Feature Summary (Table 1)**

The document provides a detailed comparison of different Zynq-7000 devices (e.g., **Z-7010, Z-7020, Z-7035, Z-7100**), highlighting:

- **Processor Cores** (single/dual-core).
    
- **Clock Frequencies** (up to 1 GHz).
    
- **PL Resources** (LUTs, DSP slices, Block RAM).
    
- **PCIe & Transceiver Support**.
    
- **Security Features** (AES/SHA-256 for secure boot).
    

**Notable Figures:**

- **Figure 1 (Architectural Overview)**: Shows the PS-PL interaction, memory interfaces, and peripheral connections.
    
- **Figure 3 (PL Interface to PS Memory Subsystem)**: Illustrates how the PL connects to DDR and OCM via AXI.
    

---

### **4. System-Level Functions**

#### **Boot & Configuration**

- **Multi-stage boot process** (secure/non-secure).
    
- Supports **NOR, NAND, Quad-SPI, SD, JTAG** boot modes.
    
- **PL configuration managed by PS software**.
    

#### **Debug & Power Management**

- **ARM CoreSight-based debug** (JTAG, trace buffers).
    
- **Independent PS & PL power domains** (PL can be powered down).
    
- **Dynamic clock scaling** for power savings.
    

#### **Memory Map**

- **4 GB address space** (DDR, PL AXI slaves, I/O peripherals).
    

---

### **5. Applications**

The Zynq-7000 targets:

- **Automotive** (driver assistance, infotainment).
    
- **Industrial** (motor control, machine vision).
    
- **Communications** (LTE baseband).
    
- **Medical imaging & diagnostics**.
    

---

### **Conclusion**

The **Zynq-7000** combines **ARM CPU programmability** with **FPGA flexibility**, making it ideal for embedded systems requiring **real-time processing** and **custom hardware acceleration**. Its **PS-PL coherency, high-speed interfaces (PCIe, Ethernet, USB), and security features** make it a powerful SoC for diverse applications.

**Key Takeaways:**

- **PS handles OS/software, PL accelerates custom logic.**
    
- **AXI interconnect ensures high-throughput communication.**
    
- **Secure boot & TrustZone enhance security.**
    
- **Power management allows dynamic clocking & PL shutdown.**
    

For more details, refer to the **Zynq-7000 Technical Reference Manual (UG585)** and **Xilinx’s Vivado Design Suite** for development.

