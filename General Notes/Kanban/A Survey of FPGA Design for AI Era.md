Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** COMSOL

**DOI**: https://iopscience.iop.org/article/10.1088/1674-4926/41/2/021402/pdf

**Authors**: Zhengjie Li, Yufan Zhang, Jian Wang, and Jinmei Lai

**Publication Year**: 2020

**Country of Study**: China

**Tags**: #hwsw #applications #architecture #ai #fpga #DNN #dsp #CLB #ALM

```ad-abstract
title: Abstract
collapse: open
FPGA is an appealing platform to accelerate DNN. We survey a range of FPGA chip designs for AI. For DSP module,
one type of design is to support low-precision operation, such as 9-bit or 4-bit multiplication. The other type of design of DSP
is to support floating point multiply-accumulates (MACs), which guarantee high-accuracy of DNN. For ALM (adaptive logic mod-
ule) module, one type of design is to support low-precision MACs, three modifications of ALM includes extra carry chain, or 4-
bit adder, or shadow multipliers which increase the density of on-chip MAC operation. The other enhancement of ALM or CLB
(configurable logic block) is to support BNN (binarized neural network) which is ultra-reduced precision version of DNN. For
memory modules which can store weights and activations of DNN, three types of memory are proposed which are embedded
memory, in-package HBM (high bandwidth memory) and off-chip memory interfaces, such as DDR4/5. Other designs are new ar-
chitecture and specialized AI engine. Xilinx ACAP in 7 nm is the first industry adaptive compute acceleration platform. Its AI en-
gine can provide up to 8X silicon compute density. Intel AgileX in 10 nm works coherently with Intel own CPU, which increase
computation performance, reduced overhead and latency.
```

**Embed to Paper**: ![[A Survey of FPGA Design for AI Era.pdf]]

## Summary

#### **1. Introduction**

The paper highlights the growing importance of AI, particularly Deep Neural Networks (DNNs), in applications like computer vision, speech recognition, and language translation. DNNs, such as CNNs and RNNs, require intensive computation and memory resources. While GPUs are commonly used for training DNNs, their high energy consumption makes them less suitable for inference tasks in edge devices. FPGAs, with their reconfigurability, low power consumption, and real-time processing capabilities, emerge as a preferred platform for DNN acceleration. However, FPGAs face limitations in computation and memory resources, prompting the need for architectural redesigns to better support AI workloads.

---

#### **2. DSP Module Design for AI**

The DSP (Digital Signal Processing) module is critical for accelerating Multiply-Accumulate (MAC) operations in DNNs. The paper discusses two key design approaches:

- **Low-Precision Design**:
    
    - Enhanced DSP blocks support 9-bit and 4-bit multiplications, enabling higher computation density. For example, Boutros et al.'s redesigned DSP (Figure 1) achieves 2× and 4× more 9-bit and 4-bit multiplications, respectively, compared to baseline designs.
        
    - Intel AgileX and Xilinx ACAP also support INT8 computations, further optimizing low-precision inference.
        
- **Floating-Point Design**:
    
    - High-accuracy tasks require floating-point support. Intel AgileX and Xilinx ACAP provide FP32, FP16, and BFloat16 capabilities, with Intel achieving up to 40 TFLOPS for FP16 operations.
        

---

#### **3. ALM/CLB Module Design for AI**

Adaptive Logic Modules (ALMs) and Configurable Logic Blocks (CLBs) are enhanced to improve MAC density and support Binarized Neural Networks (BNNs):

- **Low-Precision Design**:
    
    - Modifications like extra carry chains, 4-bit adders, and shadow multipliers (Figure 2) increase MAC density by up to 6.1× with minimal area overhead.
        
- **BNN Design**:
    
    - BNNs reduce weights and activations to 1-bit, replacing MACs with XNOR-popcount operations. Kim et al. propose ALM modifications (Figure 4) to optimize popcount operations, reducing LUT usage by 23%–60%.
        

---

#### **4. Memory Module Design for AI**

Memory bandwidth is a bottleneck for DNNs. FPGA vendors address this with:

- **Embedded Memory**: On-chip RAM (e.g., Xilinx’s UltraRAM, Intel’s eSRAM).
    
- **In-Package Memory**: High Bandwidth Memory (HBM) for reduced latency and power.
    
- **Off-Chip Interfaces**: Support for DDR4/5 and Intel Optane DC (Figure 5(b)).
    

---

#### **5. Other Designs for AI**

- **Acceleration Platforms**:
    
    - Xilinx’s 7nm ACAP (Figure 6(a)) integrates scalar, adaptable, and intelligent engines, achieving 20× performance gains over traditional FPGAs.
        
    - AI Engines (Figure 6(b)) in ACAP deliver 8× compute density at half the power.
        
- **FPGA-CPU Platforms**:
    
    - Intel’s 10nm AgileX (Figure 5(a)) features coherent CPU-FPGA integration via CXL, offering 40% higher performance or lower power.
        

---

#### **6. Conclusion**

The paper summarizes FPGA enhancements for AI (Table 1), including:

- **DSP**: Low-precision and floating-point support.
    
- **ALM/CLB**: MAC density improvements and BNN optimizations.
    
- **Memory**: Hierarchical memory solutions.
    
- **Platforms**: Xilinx ACAP and Intel AgileX, which combine reconfigurability with specialized AI engines.
    

These innovations position FPGAs as a versatile and efficient platform for AI inference, balancing performance, power, and flexibility.

---

### **Key Figures**

- **Figure 1**: Enhanced DSP architecture for low-precision multiplications.
    
- **Figure 2**: ALM modifications for low-precision MACs (extra carry chain, 4-bit adder, shadow multiplier).
    
- **Figure 3**: Comparison of CNN and BNN dataflows.
    
- **Figure 4**: ALM modifications for BNNs (sum propagation and full adder additions).
    
- **Figure 5**: Intel AgileX architecture and memory hierarchy.
    
- **Figure 6**: Xilinx ACAP architecture and AI engine design.
