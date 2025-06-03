Date: 5th May 2025
Date Modified: 5th May 2025
File Folder: Kanban
## Publication Information

**Database:** ELSeVIER

**DOI**: [https://doi.org/10.1016/j.mejo.2020.104874](https://doi.org/10.1016/j.mejo.2020.104874 "Persistent link using digital object identifier")

**Authors**: Rym Chéour, Sabrine Khriji, Martin Götz, Mohamed Abid, Olfa Kanoun

**Publication Year**: 2019

**Country of Study**: USA

**Tags**: #wsn #msp430 #powerconsumption #sensornode #energyoptimization #frequencyscaling #voltagescaling #energyharvesting #DVFS #survey #measurement

```ad-abstract
title: Abstract
collapse: open
Wireless Sensor Networks (WSNs) began to permeate all facets of life thanks to low cost, inherent intelligent- processing capability, simple installation, flexible networking and low energy consumption characteristics. Also, the evaluation of real-world applications on different platforms can solve the implementation problems and contribute to broadening the spectrum of Internet of Things (IoT) applications. The purpose of this paper is to reduce the microcontroller’s average consumption of a wireless sensor node through architectural and design processes using advanced technologies. This paper provides a state-of-the-art investigation on the most up-to date Dynamic Voltage and Frequency Scaling (DVFS) techniques. A benchmark is given to choose the appro- priate DVFS technique according to the type of component, the time and resources constraints, the application requirements, the expected performance level, etc. An energy-saving design is implemented using an ultra-low power microcontroller MSP430 and is based on the DVFS strategy. To efficiently quantify the consumed energy and to ensure more accuracy, a new concept is introduced, which is the normalized power to offer more accu- racy. Real voltage/frequency scaling measurement were conducted. We show that a high voltage/frequency can lead to up to 57% increase of the normalized-power
```

**Embed to Paper**: [[Accurate Dynamic Voltage and Frequency Scaling Measurement for Low-Power Microcontrollors in Wireless Sensor Networks.pdf]]

## Summary

### **1. Introduction**

The paper addresses **energy optimization in Wireless Sensor Networks (WSNs)**, which are constrained by limited battery life and increasing computational demands. Key challenges include:

- **High energy consumption** due to data processing, radio transmission, and sensor sampling.
    
- **Battery replacement difficulties** in remote or hazardous deployments.
    
- **Trade-offs between performance and power efficiency** in microcontrollers (MCUs).
    

**Solution:** **Dynamic Voltage and Frequency Scaling (DVFS)** dynamically adjusts voltage ($V$) and frequency ($f$) to match workload requirements, reducing both **dynamic and static power consumption** in CMOS-based systems.

---

### **2. Background on DVFS and CMOS Power Dynamics**

#### **2.1. Power Consumption in CMOS Circuits**

- **Dynamic Power ($P_{dynamic}$​)**:
    $$
P_{dynamic}=\alpha \times C_{L} \times V^{2}\times f
$$
    - **Quadratic reduction** in power when voltage is scaled down.
        
    - **Frequency reduction** is necessary to maintain stability (slower transistor switching at lower VV).
        
- **Static/Leakage Power ($P_{static}$​)**:
    
    - Caused by subthreshold leakage currents (less emphasized but acknowledged).
        
    - Mitigated by **lowering voltage** and **body biasing** (cited from prior work [42]).
#### **2.2. DVFS Fundamentals**

- **Operating Performance Points (OPPs)**: Predefined ($V,f$) pairs for power-performance trade-offs.
    
- **Critical Frequency ($f_{crit}$​)**: Minimum frequency for stable operation at a given voltage.
    
- **Normalized Power ($mW/MIPS$)**: New metric introduced to evaluate energy-per-throughput efficiency.
    

---

### **3. Taxonomy of DVFS Techniques (Fig. 1)**

The paper classifies DVFS strategies along **8 dimensions**:

1. **Scaling Granularity**
    
    - _Inter-task_: Fixed $\frac{V}{f}$ per task.
        
    - _Intra-task_: Dynamic adjustments within a task.
        
2. **Network Policy**
    
    - _Local_: Per-core control (better energy savings).
        
    - _Global_: Chip-wide control (simpler implementation).
        
3. **Timing Constraints**
    
    - _Hard real-time_: Strict deadlines (e.g., fall detection).
        
    - _Mixed-criticality_: Tolerates minor delays.
        
4. **Scheduling Policy**
    
    - _Offline_: Pre-runtime optimization (pessimistic, based on WCET).
        
    - _Online_: Runtime adjustments (adapts to Actual Execution Time, AET).
        
5. **Estimation Techniques**
    
    - _Profiling_: Historical workload analysis.
        
    - _Monitoring_: Real-time resource tracking.
        
6. **Control Level**
    
    - _On-chip_: Hardware regulators.
        
    - _OS-level_: Software APIs (e.g., Linux governors).
        
7. **Policy Determinism**
    
    - _Static_: Fixed rules.
        
    - _Dynamic_: Adaptive algorithms (e.g., machine learning [18]).
        
8. **Components Targeted**
    
    - CPU, GPU, RAM, cache, and radio transceivers.
        

---

### **4. Related Work**

- **CPU-Centric DVFS**: Traditional focus on processors ([25, 33]).
    
- **Memory & Radio DVFS**: Applied to RAM ([34]) and transceivers ([36]) for idle-power reduction.
    
- **Multi-Core Systems**: Combined with VM migration in data centers ([32]).
    
- **WSN-Specific Techniques**: Duty cycling, energy harvesting, and hybrid DPM-DVFS ([46]).
    

---

### **5. Proposed DVFS Approach**

#### **5.1. Normalized Power Concept**

- Defined as **power per throughput (mW/MIPS)** to compare efficiency across duty cycles.
    
- Accounts for **active-mode energy** and **performance trade-offs**.
    

#### **5.2. Implementation on MSP430F5529**

- **Setup**:
    
    - Voltage scaled from **2.2V to 3.6V**, frequency from **2MHz to 18MHz**.
        
    - Measured using **Keysight E5270 SMU** (4-wire precision).
        
- **Results**:
    
    - **57% increase** in normalized power at **18MHz/3.6V** vs. lower V/fV/f (Fig. 3).
        
    - **37% power reduction** when lowering frequency from 18MHz to 2MHz at 3.6V (Fig. 7).
        
    - **Optimal OPPs**: Balance (Vmin,fminVmin​,fmin​) to minimize energy while meeting deadlines.
        

---

### **6. Performance Evaluation**

- **High V/fV/f**: Increases throughput but raises energy consumption (Fig. 3).
    
- **Low V/fV/f**: Saves energy but risks deadline violations in real-time tasks.
    
- **Trade-off**: DVFS must dynamically adapt to workload slack time (idle periods).
    

---

### **7. Conclusion & Future Work**

- **DVFS reduces energy** by up to **57%** in WSN nodes but requires careful tuning.
    
- **Normalized power** is a robust metric for comparing MCU efficiency.
    
- **Future Directions**:
    
    - Overhead analysis of DVFS transitions.
        
    - Integration with **energy harvesting** and **multi-core scheduling**.
        

---

### **Key Takeaways on CMOS Power**

1. **Dynamic Power Dominates**: Quadratic voltage scaling is most effective for energy savings.
    
2. **Leakage Power**: Addressed indirectly via lower VV and body biasing.
    
3. **Frequency-Voltage Coupling**: Critical for maintaining CMOS circuit stability.
    
4. **Real-World Validation**: MSP430 experiments confirm theoretical models.
    

This work provides a **comprehensive framework** for DVFS in WSNs, bridging theory (CMOS power models) and practice (MSP430 measurements).
