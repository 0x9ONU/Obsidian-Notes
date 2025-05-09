Date: 9th May 2025
Date Modified: 9th May 2025
File Folder: Kanban
## Publication Information

**Database:** Elsevier

**DOI**: [https://doi.org/10.1016/j.microrel.2023.115010](https://doi.org/10.1016/j.microrel.2023.115010 "Persistent link using digital object identifier")

**Authors**: Natalia Cherezova, Konstantin Shibin, Maksim Jenihhin, Artur Jutman

**Publication Year**: 2023

**Country of Study**: USA

**Tags**: #errors #faulttolerance #FPGA #soc

```ad-abstract
title: Abstract
collapse: open
The emergence of heterogeneous FPGA-based SoCs and their growing complexity fueled by the introduction of various accelerators bring the reliability aspect of these systems to the front. The concern is particularly important for critical applications, such as safety-critical autonomous vehicles, real-time systems, [space missions](https://www.sciencedirect.com/topics/physics-and-astronomy/space-mission "Learn more about space missions from ScienceDirect's AI-generated Topic Pages"), health, and security cyber–physical systems. This paper presents an analysis of the most common types of errors caused by faults in different components and identifies the most critical and vulnerable components based on the literature survey. The study looks into vendor-provided and user-space reliability solutions. The paper highlights the existing fault-tolerance gaps in the modern [SoC](https://www.sciencedirect.com/topics/engineering/system-on-chip "Learn more about SoC from ScienceDirect's AI-generated Topic Pages") FPGAs and outlines a vision for future solutions.
```

**Embed to Paper**: ![[Understanding fault-tolerance vulnerabilities in advanced SoC FPGAs for critical applications.pdf]]

## Summary

### **1. Introduction**

- **SoC FPGAs** integrate processors (e.g., ARM Cortex-A/R, RISC-V), FPGA logic, memory, peripherals, and accelerators (e.g., GPUs, AI engines).
    
- Their **dense structure** and complex heterogeneity make them **susceptible to soft errors** (primarily SEUs, SEFIs, and SETs).
    
- **Soft errors** caused by radiation dominate fault behavior in digital systems, especially in space or automotive applications.
    
- **Main contributions**:
    
    - Taxonomy of SoC FPGA components
        
    - Fault effect analysis per component
        
    - Review of vendor-provided and user-space fault-tolerance mechanisms
        
    - Identification of **fault coverage gaps**
        

---

### **2. Faults and Fault Effects in SoC FPGAs**

#### **2.1 SoC FPGA Structure**

- Based on:
    
    - AMD-Xilinx: Versal ACAP, Zynq UltraScale+
        
    - Intel: Agilex, Stratix 10
        
    - Microchip: PolarFire SoC
        
- Main components:
    
    - Processors, FPGA fabric, memories, peripherals, accelerators, and interconnects
        
    - **Device manager** (PMU, SDM, etc.) handles secure boot, config, and runtime monitoring
        
    - New platforms (e.g., Versal) include **AI Engines** and a **programmable NoC**
        

#### **2.2 Fault Types and Effects**

- **Processors**:
    
    - Faults in registers and caches cause **SDCs** or **control flow errors**
        
    - **A-cores** more vulnerable due to lack of lock-step protection
        
- **FPGA logic**:
    
    - **Configuration memory faults** (e.g., in LUTs or routing bits) can lead to **functional change**, **parasitic delays**, or **crashes**
        
    - **Routing faults** (e.g., bridge, open, antenna types) are **most critical**
        
- **Accelerators**:
    
    - Faults in GPU caches or AI Engine scalar/vector units result in **incorrect computation**, not necessarily system crashes
        
- **Peripherals & memory controllers**:
    
    - Faults in control registers or address decoding can lead to **crashes or data corruption**
        
- **On-chip interconnects (e.g., NoC)**:
    
    - Faults in routing tables or links can cause **system-wide loss of configuration**
        

> 📌 **Table 1** summarizes error types (SC = System Crash, AC = App Crash, ASDC = App Silent Data Corruption) per module.

---

### **3. Vendor-Provided Fault Tolerance Mechanisms**

#### Summary of Key Techniques (Table 2):

- **Device Managers** (PMU, SDM, Monitor core): root of trust, config, monitoring
    
- **Triple Modular Redundancy (TMR)**: Applied to PMU, with tools for logic triplication (Virtex, MicroBlaze)
    
- **ECC**: Ubiquitous for caches, on-chip RAM, DDR4; different correction capabilities across vendors
    
- **Dual Lock-step**: Available in ARM Cortex-R cores (AMD-Xilinx)
    
- **Scrubbing**:
    
    - **XilSEM** (AMD-Xilinx): ECC, CRC, SHA-based detection, error injection
        
    - **Intel EDC**: Rectangular error correction patterns
        
- **Memory Protection Units (MPUs)**: Address isolation and TrustZone support
    
- **Built-in Tests**: LBIST, MBIST, Software Test Library (STL)
    
- **Watchdog Timers**: For crash detection or recovery
    

> 📌 **Figure 1**: Structural overview of a modern SoC FPGA  
> 📌 **Figure 2**: Fault coverage taxonomy — red = vulnerable, colored = vendor-protected

---

### **4. Fault Tolerance Gaps**

#### Key Observations:

1. **Processors and Memories** are best protected (ECC, lock-step, watchdogs)
    
2. **User logic, interconnects, and accelerators** have limited or **no protection**
    
3. **Scrubbing** can't handle **instantaneous errors** or function under high-radiation reliably
    
4. **ECC** only handles SDCs and can **degrade performance**
    
5. **MPUs** are not designed as fault-tolerance tools but offer some isolation benefits
    

#### Identified Gaps:

- Unprotected components include **registers**, **user memory flip-flops**, **NoC elements**, **AI engines**, and **peripheral controllers**
    
- Many vendor methods are **unsuitable for space or harsh environments**
    
- Current strategies are **fragmented** and lack **system-wide integration**
    

---

### **5. User-Space Fault Tolerance Solutions**

#### Processor-Level:

- **Hybrid lock-step** with soft and hard cores
    
- **Temporal redundancy** and process-level redundancy (PLR)
    
- **Redundant multithreading**, watchdog threads
    

#### FPGA Logic:

- Custom **TMR**, scrubbing integration
    
- **Placement-based mitigation** for routing faults
    
- **Partial dynamic reconfiguration**
    

#### Accelerators:

- Fault-aware training for **NN accelerators**
    
- **Result range restriction** or **algorithm-based fault tolerance** for inference robustness
    

---

### **6. Discussion and Conclusions**

- SoC FPGAs have become viable for **critical systems**, but vendor protections are tailored for **COTS commercial domains**.
    
- The **cross-layer reliability approach** is needed:
    
    - Integrate hardware, software, and runtime monitoring
        
    - Develop **adaptive, coordinated fault-handling frameworks**
        
- Research is needed to optimize fault-tolerance across design layers, particularly for systems like:
    
    - AI workloads
        
    - Radiation-prone applications (e.g., aerospace)
        
    - Safety-critical control systems (e.g., automotive)
        

---

### **7. Summary**

This paper:

- Analyzes component-specific fault behavior and protection
    
- Evaluates vendor and user-space fault-tolerance mechanisms
    
- Highlights critical **coverage gaps** in **unprotected modules**
    
- Proposes **cross-layered and user-coordinated solutions** for enhanced SoC FPGA resilience