
# **1. Introduction and Objectives**

The paper investigates the **performance and stability** of a **6T SRAM cell** across four CMOS technology nodes (**180 nm, 90 nm, 65 nm, 45 nm**) using Predictive Technology Model (PTM) files. Key objectives include:

- **Stability Analysis**: Evaluate **Static Noise Margin (SNM)**, **Read SNM (RSNM)**, and **Write SNM (WSNM)** to assess robustness against noise.
    
- **Performance Metrics**: Measure **delay**, **power**, and **scalability** as technology shrinks.
    
- **Comparative Study**: Benchmark results against prior work to highlight improvements.
    

# 2. 6T SRAM Cell Basics

- **Structure**:
    
    - **6 transistors**: 2 cross-coupled inverters (M1–M4) + 2 access transistors (M5–M6).
        
    - **Bi-stable states**: Stores '0' or '1' without refresh (unlike DRAM).
        
- **Operations**:
    
    - **Hold**: Data retained when WL is inactive (no connection to bitlines).
        
    - **Read**: Pre-charged bitlines (BL/BLB) discharge through access transistors, creating a voltage differential detected by a sense amplifier.
        
    - **Write**: Strong access transistors (M5/M6) override inverter states to write new data.
        

# 3. Key Performance Parameters

1. **Static Noise Margin (SNM)**
    
    - **Definition**: Maximum tolerable DC noise before state flip.
        
    - **Butterfly Curve Method**: Graphical analysis of voltage transfer characteristics (VTC).
        
    - **Findings**:
        
        - **Hold SNM (HSNM)**: Improved by **24.85%** on average (e.g., 350 mV at 180 nm → 200 mV at 45 nm).
            
        - **Read SNM (RSNM)**: Enhanced by **7.72%** due to sharper VTC transitions (e.g., 0.12V at 180 nm → 0.05V at 45 nm).
            
        - **Write SNM (WSNM)**: Increased by **5.94%** from stronger access transistors (e.g., 1.5V at 180 nm → 0.8V at 45 nm).
            
2. **Delay**
    
    - **Write Delay Reduction**: **14% improvement** (52 ps at 180 nm → 12 ps at 45 nm) due to faster switching at smaller nodes.
        
3. **Technology Scaling Impact**
    
    - **Stability vs. Speed Trade-off**: Smaller nodes (e.g., 45 nm) show better delay but require careful SNM optimization.
        
    - **Leakage Power**: Increases with scaling but mitigated by stronger access transistors.
        

# 4. Experimental Methodology

- **Tools**: HSPICE with BSIM3 PTM models.
    
- **Simulation Setup**:
    
    - Fixed $V_{DD}=0.9V$ across all nodes.
        
    - Butterfly curves generated for SNM analysis.
        
- **Comparative Data**:
    
    - **Tables 1–4** compare HSNM, RSNM, WSNM, and delay with prior work, showing consistent improvements.
        

#### **5. Results and Analysis**

- **Hold Operation**:
    
    - **HSNM** degrades with scaling (350 mV → 200 mV) but remains within safe limits due to optimized transistor sizing.
        
- **Read Operation**:
    
    - **RSNM** improves due to reduced parasitic capacitance and sharper VTC transitions.
        
- **Write Operation**:
    
    - **WSNM** benefits from stronger access transistors (M5/M6) overpowering pull-up PMOS (M1/M3).
        

#### **6. Advantages of Scaled Technologies**

- **Speed**: 45 nm offers **lowest delay (12 ps)** for high-speed applications (e.g., CPUs, aerospace).
    
- **Stability**: Enhanced SNM metrics ensure reliability despite process variations.
    
- **Area Efficiency**: Smaller nodes enable higher memory density.
    

#### **7. Challenges and Trade-offs**

- **Leakage Current**: Increases at smaller nodes, requiring leakage-control techniques.
    
- **Process Variations**: Threshold voltage ($V_{TH}$​) variability affects stability, necessitating robust design.
    

#### **8. Conclusion**

- The 6T SRAM cell demonstrates **optimal performance at 45 nm** with:
    
    - **7.72% higher RSNM**, **5.94% better WSNM**, and **14% lower delay** vs. prior work.
        
- **Key Contributions**:
    
    - Empirical validation of SNM improvements via butterfly curves.
        
    - Demonstration of scalability benefits for high-speed, low-power applications.
        

#### **9. Future Work**

- **FinFET Integration**: Explore stability in sub-45 nm nodes with FinFETs.
    
- **Low-Power Techniques**: Investigate near-threshold operation for IoT devices.
    

### **Key Takeaways for SRAM Design**

1. **Technology Scaling**: Smaller nodes (45 nm) offer speed and area advantages but require careful SNM optimization.
    
2. **Stability Metrics**: SNM, RSNM, and WSNM are critical for reliable memory in scaled CMOS.
    
3. **Design Trade-offs**: Balance delay, power, and noise margins using transistor sizing and access-strength tuning.