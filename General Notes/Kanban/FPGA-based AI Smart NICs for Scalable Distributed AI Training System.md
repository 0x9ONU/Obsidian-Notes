Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** Intel

**DOI**: https://arxiv.org/pdf/2204.10943

**Authors**: Rui Ma, Evangelos Georganas, Alexander Heinecke, Andrew Boutros, Eriko Nurvitadhi

**Publication Year**: 2022

**Country of Study**: USA

**Tags**: #ai #fpga #communication #NIC #dnn #gpu

```ad-abstract
title: Abstract
collapse: open
Training state-of-the-art artificial intelligence (AI) models requires scaling to many compute nodes and relies heavily on collective communication operations, such as all-reduce, to exchange the weight gradients between nodes. The overhead of these operations can bottleneck training performance as the number of nodes increases. In this paper, we first characterize the all-reduce operation overhead. Then, we propose a new smart network interface card (NIC) for distributed AI training using field-programmable gate arrays (FPGAs) to accelerate all-reduce operations and optimize bandwidth utilization via data compression. The AI smart NIC frees up the system's compute resources to perform the more compute-intensive tensor operations and increases the overall node-to-node communication efficiency. We build a prototype 6-node AI training system and show that our proposed FPGA-based AI smart NIC enhances overall training performance by 1.6×, with an estimated 2.5× performance improvement at 32 nodes.
```

**Embed to Paper**: ![[FPGA-based AI Smart NICs for Scalable Distributed AI Training Systems.pdf]]
## Summary

---

### **I. Introduction**

- Modern AI models are increasingly large (from 94M to 540B parameters in 5 years), requiring distributed training over many compute nodes.
    
- The training process relies heavily on **collective communication**, especially the **all-reduce** operation, to share weight gradients.
    
- These operations introduce significant **overhead** and **performance bottlenecks** as nodes scale up.
    
- The authors propose using **FPGA-based AI smart NICs** to:
    
    - Offload all-reduce operations from CPUs/GPUs.
        
    - Introduce **block floating-point (BFP)** compression to reduce data transmission size.
        
- Gains: **1.6× speedup** on 6 nodes, **2.5× projected** on 32 nodes.
    

---

### **II. Background and Related Work**

#### **A. Distributed AI Training**

- Uses **data parallelism**: each node trains on a mini-batch, then synchronizes via all-reduce.
    
- Training includes forward pass, backward pass, and gradient synchronization.
    

#### **B. All-Reduce Algorithms**

- **Ring all-reduce** (Fig. 1) is used here for its bandwidth efficiency.
    
- Data circulates among nodes in a ring, with each node contributing partial reductions.
    

#### **C. FPGA In-Network Processing**

- FPGAs in **Azure (Microsoft)** and **Intel IPUs** have shown large-scale success.
    
- Prior work focused on switches or GPU-connected FPGAs.
    
- This work uniquely uses **smart NICs** with FPGAs **plus compression** and **analytical modeling**.
    

---

### **III. Profiling Distributed AI Training**

- Benchmark: 20-layer MLPs on **6-node CPU cluster**, each node with **28-core Intel Xeon 8280**.
    
- Naive strategy: all threads do tensor work; one thread handles all-reduce → **51% time lost to communication**.
    
- Optimized strategy: overlap all-reduce with computation by dedicating 2 threads to communication.
    
    - Result: **1.85× performance gain** but **11% loss in compute throughput** (Fig. 2a).
        
- **Fig. 2b** shows that **ring all-reduce** scales better than binomial/tree methods as nodes increase.
    

---

### **IV. FPGA-Based AI Smart NIC**

#### **A. System Overview and Architecture**

- Each node has an FPGA-based NIC attached via PCIe (Fig. 3a).
    
- FPGAs form a **logical ring** on top of Ethernet.
    
- Training execution overlaps FPGA-based all-reduce with backward propagation (Fig. 3b).
    
- Components:
    
    - **Input FIFO**: stores local gradients.
        
    - **Rx FIFO**: stores gradients from previous node.
        
    - **FP32 adder bank**: computes reductions.
        
    - **Tx FIFO / Output FIFO**: forward data or write back to host.
        

#### **B. Block Floating Point Compression**

- Uses **BFP16**: 8-bit shared exponent, 7-bit mantissa, block size 16 → **3.8× compression**.
    
- Compression/decompression handled on-the-fly by FPGA.
    
- Parameters can be **tuned dynamically** based on workload.
    

#### **C. Performance Model**

- Models forward/backward compute time and all-reduce latency:
    
    - Ring latency: proportional to data × (nodes − 1)
        
    - Bottlenecks: network (Tring), FPGA adders (Tadd), memory I/O (Tmem)
        
- Equation accounts for PCIe and Ethernet bandwidths, compression factor (β), and FPGA throughput (PFPGA).
    
- Validated to within **3% error** compared to actual system measurements.
    

---

### **V. Evaluation**

#### **A. Implementation Details**

- **6-node prototype**: Intel Xeon + Intel Arria 10 FPGAs via PCIe Gen3x8, 40 Gbps Ethernet.
    
- Software: Intel’s OPAE and IKL stack.
    
- FPGA resource usage (Table I):
    
    - All-Reduce: 0.5% ALMs
        
    - BFP Compression: 0.7% ALMs
        
    - Total: **~16% logic, ~20% RAM**, **0.5% DSPs**
        

#### **B. Performance Results**

- **Fig. 4a** (Mini-batch 448, 20-layer MLP):
    
    - Baseline: software all-reduce with thread overlap.
        
    - Smart NIC (no BFP): 18% faster.
        
    - Smart NIC + BFP: **40% faster**, **95% reduction in exposed communication time**.
        
- **Fig. 4b**: Scaling to 32 nodes:
    
    - Mini-batch 448: **up to 2.5× performance** with BFP compression.
        
    - Mini-batch 1792: limited gains (1.4×), as computation becomes the bottleneck.
        

---

### **VI. Conclusion**

- Proposed solution: **FPGA AI smart NIC** for **all-reduce offloading** and **gradient compression**.
    
- Validated on a 6-node system with **1.6× real** and **2.5× modeled** improvements.
    
- Uses <2% of FPGA resources even at 400 Gbps scaling.
    
- Effective even when using **slower 40 Gbps links**, thanks to compression and compute offload.
    

---

### **Key Figures and Tables**

- **Fig. 1** – Pipelined ring all-reduce architecture.
    
- **Fig. 2a** – Comparison of naive vs optimized CPU threading.
    
- **Fig. 2b** – Scaling behavior of different all-reduce algorithms.
    
- **Fig. 3a** – System diagram of AI Smart NIC and its internal modules.
    
- **Fig. 3b** – Timing overlap of backward pass and all-reduce.
    
- **Table I** – FPGA resource breakdown (ALMs, RAMs, DSPs).
    
- **Fig. 4a & 4b** – Measured and modeled training time, scaling with node count and BFP impact.