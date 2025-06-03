Date: 5th May 2025
Date Modified: 5th May 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE

**DOI**: https://par.nsf.gov/servlets/purl/10331530

**Authors**: Siqin Liu and Avinash Karanth

**Publication Year**: 2021

**Country of Study**: United States

**Tags**: #dynamicfreuqenc #hardwareaccelerator #MachineLearning #neuralnetwork

```ad-abstract
title: Abstract
collapse: open
Neural networks (NNs) have been used in a wide variety of artificial intelligence (AI) applications, including speech recognition, image recognition, automatic robotics, and games. State-of-the-art NNs provide high prediction accuracy at the expense of massive computation that involves large model pa- rameters which consume substantial energy. Though sparse NNs have emerged to reduce the computation and storage overhead, existing specialized DNN accelerators cannot maximize the en- ergy savings when exploiting both dynamic and static sparsity, especially for irregular NNs. In this paper, we propose a dynamic voltage and frequency scaling (DVFS) based hardware acceler- ator that effectively exploits the dynamic and static sparsity of NNs with dynamic voltage/frequency (V/F) scaling and power gating techniques to reduce both static and dynamic power. To explore the efficiency of DVFS implementation at different granularities, we evaluate both coarse-grained and fine-grained DVFS implementation with different design trade-offs. Further, our proposed DVFS model predicts the dynamic computation workloads as well as V/F pairs to be supplied to processing elements (PEs) in the hardware intelligently through pre-trained weight vectors. The machine learning based prediction algorithm is deployed to improve the DVFS mode selection accuracy. Our simulation results on AlextNet, VGG16, and ResNet50 show that we can achieve an average dynamic energy savings of 59-66% and an average static power reduction of 69-80% compared to the baseline.
```

**Embed to Paper**: ![[Dynamic Voltage and Frequency Scaling to Improve Energy-Efficiency of Hardware accelerators.pdf]]

## Summary

### **I. Introduction**

- DNNs are computation-intensive, needing specialized accelerators (e.g., Eyeriss, DaDianNao).
    
- **Sparsity**, from network pruning and activation functions (like ReLU), reduces compute demand but introduces **irregularity**.
    
- Existing accelerators struggle to **fully exploit sparsity**, especially fine-grained unstructured sparsity.
    
- **DVFS and power gating** offer a promising way to adjust resource use dynamically based on workload.
    
- Key idea: Predict sparse workload per PE and adapt voltage/frequency accordingly.
    

---

### **II. Proposed Architecture**

#### **A. Accelerator Hardware and Microarchitecture**

- **Figure 1** shows the overall architecture: includes a global buffer (GB), data dispatcher (DD), DVFS predictor (DP), dynamic V/F generator (DVFG), and a 16×16 PE array.
    
- Data is fetched from DRAM and routed via a mesh NoC.
    
- The **DVFG and DP** monitor sparsity at runtime and adjust V/F per PE.
    

**Workload Estimation Equation:**

$$\text{SparseWorkload}=(F^2−S_{w})O^2−F(F−S_{a})$$

Where:

- $F$: Filter size, $O$: Output size
    
- $S_w, S_a$​: Number of zero weights and activations
    

#### **B. DVFS Models**

- Five states: 0.8V (low power) to 1.2V (high speed), plus **power-gated mode**.
    
- **Table I** defines 4 DVFS models:
    
    - **Power-Gating**: Maximizes static savings
        
    - **Power-Saving**: Minimizes dynamic power
        
    - **Balanced**
        
    - **Performance**: Prioritizes speed
        

#### **C. Dataflow and Walkthrough Example**

- Uses **output-stationary dataflow**: psums are kept inside the PE.
    
- **Figure 3** shows a 2×2 PE array running a 3×3 convolution over 2 epochs.
    
    - Epoch 0: All PEs run at 1.0V.
        
    - Epoch 1: V/F levels change per PE, with some PEs power-gated.
        
- Shows **how PEs sync data** at different voltages and manage buffers.
    

#### **D. Machine Learning-based DVFS Prediction**

- **Figure 4**: A compact neural network predicts V/F mode per PE per epoch.
    
- Features used include non-zero weight/activation counts.
    
- Algorithms:
    
    - **Algorithm 1**: Offline training
        
    - **Algorithm 2**: Runtime prediction
        

---

### **III. Performance and Evaluation**

#### **A. Simulation Setup**

- Benchmarks: **AlexNet**, **VGG16**, **ResNet50** (on CIFAR-10)
    
- Synthesized in **45nm FreePDK** using Synopsys tools.
    
- Hardware modules profiled for latency, area, and power (see **Table II**).
    

#### **B. Simulation Results**

##### **Workload and Voltage Mapping**

- **Figure 5**: Shows real-time mapping of workloads to voltage levels under different DVFS models.
    
- **Figure 6**: Layer-wise V/F distribution.
    

##### **Energy Analysis**

- **Figure 7**: Energy breakdown by voltage level for each DVFS model.
    
    - **Power-Saving** model performs best in dynamic energy savings.
        
- **Figure 8**: Static vs dynamic energy normalized to baseline.
    
- **Figure 9**: Trade-offs: Power-Saving has best **EDP (Energy Delay Product)** but slightly higher delay.
    

##### **DVFS Design Trade-offs**

- **Epoch size** affects:
    
    - Prediction accuracy (**Figure 10**): Best at ~50 cycles.
        
    - Buffer size overhead (**Figure 11**): Grows with epoch size.
        
- **Coarse vs Fine-grained DVFS**:
    
    - **Coarse-grained** (voltage per row) saves buffer size (see **Figure 12**) but less flexible.
        
    - **Fine-grained** (per PE) saves more energy but costs more in area.
        
    - **Figure 13**: Coarse-grained wins on latency; fine-grained wins on energy.
        

##### **Comparison with State-of-the-Art**

- **Table III** compares with:
    
    - **Eyeriss V2**: Least area/power, but least flexibility.
        
    - **Cambricon-S**: Large sparsity overhead.
        
    - **DVFS Design**: Balanced trade-off with best energy efficiency (526 inference/J on AlexNet).
        

---

### **IV. Related Work**

- Existing sparse accelerators like **SCNN** and **Cambricon-X** do not handle **dynamic sparsity** well.
    
- DVFS has been used at high levels (e.g., job scheduling), but **this paper applies it at the PE level** based on sparsity.
    

---

### **V. Conclusions**

The proposed DVFS-based DNN accelerator:

- Dynamically scales voltage/frequency per workload and per PE.
    
- Uses ML-based predictors for proactive V/F selection.
    
- Saves **up to 67% energy**, even with irregular sparsity.
    
- Evaluates both **fine-grained** (higher energy savings, more area) and **coarse-grained** (more scalable, lower area) designs.
    

---

### 🔍 **Figures of Interest**

- **Figure 1** – System architecture diagram
    
- **Figure 3** – Epoch-by-epoch example of PE voltage scaling
    
- **Figure 5-9** – Workload patterns, energy/delay trade-offs
    
- **Figure 11-13** – Design space analysis: buffer size, energy, latency