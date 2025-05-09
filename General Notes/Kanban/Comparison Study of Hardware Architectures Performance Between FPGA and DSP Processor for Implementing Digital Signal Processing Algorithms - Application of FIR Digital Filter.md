Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** Elsevier

**DOI**: https://www.sciencedirect.com/science/article/pii/S2590123022003097

**Authors**: Omar Diouri, Ahmed Gaga, Hamid Ouanan, Saloua Senhaji, Sanaa Faquir, Mohammed Ouazzani Jamil

**Publication Year**: 2022

**Country of Study**: Morocco

**Tags**: #hwsw #dsp #fpga #FIR_Filter #architecture 

```ad-abstract
title: Abstract
collapse: open
The objective of this project is to make a detailed study on the Hardware architectures of DSP and FPGA then to
carry out a comparison between the two platforms in order to achieve a better implementation while keeping to
increase the performances and obtain a better signal processing quality. For this raison, we wanted to make a
digital FIR filter of 40 order bandpass and a symmetrical parallel architecture of this FIR filter. Matlab’s FDA-
TOOL is used to design this filter. This tool allows us to generate the VHDL code of the filter to implement it on
Altera Cyclone III FPGA which is placed on the Texas Instruments TSW6011 board, this tool also allows us to
generate all the coefficients of our filter in a header file C in order to use them in a program of the FIR filter
written in C which will then be loaded on the DSP TMS320C6713. This achievement allows us to distinguish
between different hardware architectures and make a comparison in terms of execution speed and power
consumption.
```

**Embed to Paper**: ![[Comparison study of hardware architectures performance between FPGA and DSP processor for implementing digital signal processing algorithms - Application of FIR digital filter.pdf]]
## Summary

### **1. Introduction**

The paper outlines the growing demand for real-time and high-performance digital signal processing (DSP) due to the rise of multimedia, mobile, and internet technologies. It emphasizes the use of specialized hardware—**Digital Signal Processors (DSPs)** and **Field Programmable Gate Arrays (FPGAs)**—for tasks like convolutions, FFTs, and digital filtering. These systems must balance **power efficiency, speed, cost, and real-time performance**.

---

### **2. Description of Different Hardware Architectures**

#### **2.1 FPGA**

- FPGAs are reprogrammable silicon chips built on **configurable logic blocks** and **routing resources**.
    
- Two architectural styles:
    
    - **Island-style architecture** (Fig. 1): Matrix of configurable resources with horizontal/vertical routing.
        
    - **Hierarchical architecture** (Fig. 2): Multiple levels with localized communication to minimize long routing lines.
        
- Design is flexible but performance can degrade due to signal path complexity and reliance on routing matrices.
    

#### **2.2 DSP**

- DSPs use **VLIW (Very Long Instruction Word)** and **MAC (Multiply-Accumulate)** units for high-speed arithmetic.
    
- Architecture includes a **Harvard structure**, multiple registers, dual data paths, and instruction pipelines (Fig. 3).
    
- Optimized for real-time loop execution and numeric precision.
    

---

### **3. FIR Digital Filter**

- FIR filters perform signal convolution using fixed coefficients. They’re **always stable**, have **linear phase**, and no feedback loops.
    
- Implemented using **delays, multipliers, and adders** (Fig. 4).
    
- Compared to IIR filters, they’re **less efficient** but **more precise** and **quantization-resistant**.
    

---

### **4. Design and Simulation of FIR Filter**

#### **4.1 On FPGA**

- Developed using **MATLAB’s FDATOOL** → exported to **VHDL**.
    
- Filter: **Order 40 band-pass**, 7.6 kHz to 14 kHz (Fig. 5 & 6).
    
- Simulated on **ModelSim** to validate filtering behavior (Fig. 7).
    
- Digital input stored in **8-bit RAM** via VHDL to feed test signals into the FPGA.
    

#### **4.2 On DSP**

- Filter coefficients generated in C header file using FDATOOL.
    
- C code written and simulated using **Code Composer Studio** (CCS).
    
- Results show effective band-pass filtering in both time (Fig. 9) and frequency domains (Fig. 10).
    

---

### **5. Experimental Results**

#### **5.1 Implementation on FPGA**

- Used **Altera Cyclone III FPGA** on **TI TSW6011EVM board** (Fig. 11–13).
    
- Features:
    
    - 24,624 logic elements, 66 M9K RAM blocks, 132 multipliers (Table 1).
        
    - Used 63% of logic, 3% of registers, and 28 multipliers.
        
    - **Performance**: 122 MHz × 28 multipliers = **3.41 billion ops/sec**.
        
    - **Power**: Estimated at **95.05 mW** (Fig. 19).
        
    - Real-time signals visualized using **Signal Tap Analyzer** (Fig. 14).
        

#### **5.2 Implementation on DSP**

- Used **TI C6713 DSK board** (Fig. 15–16).
    
- 225 MHz floating-point DSP, 264 KB memory, 124 I/Os (Table 2).
    
- **Execution**: 63 cycles per loop (Fig. 21), achieving **1.8 billion ops/sec**.
    
- **Power**: Estimated at **200 mW**.
    

---

### **6. Comparison of Results**

- **Performance**: FPGA outperforms DSP in raw computation due to parallelism and dense architecture.
    
- **Power**: FPGA (95 mW) is more energy-efficient than DSP (200 mW).
    
- **FPGA**: Suited for **bit-level**, high-throughput applications.
    
- **DSP**: Offers **high flexibility** and easier development path for certain algorithms.
    
- **Table 3** summarizes:
    
    - FPGA → Very High Performance, Medium Flexibility, Medium Consumption
        
    - DSP → High Performance, Very High Flexibility, High Consumption
        

---

### **7. Conclusion**

The study concludes that **FPGA is better suited** for high-speed, low-power DSP tasks (like FIR filtering), while **DSPs provide ease of use and flexibility**. The use of MATLAB’s FDATOOL significantly eased development by generating both VHDL and C code, making hardware prototyping practical and accessible.

---

**Key Figures to Study:**

- **Fig. 1 & Fig. 2** – FPGA routing architectures (island vs. hierarchical)
    
- **Fig. 3** – Internal C6000 DSP architecture
    
- **Fig. 4** – FIR structure
    
- **Fig. 5-7, 9-10, 13-14, 17-21** – Show design, simulation, and implementation results, including filter response and power profiling.