# 1. Introduction

The paper analyzes the **performance and stability** of a **6T SRAM cell** across four advanced CMOS technology nodes (**45 nm, 32 nm, 22 nm, 16 nm**) using Predictive Technology Model (PTM) files. Key goals include:

- **Power Optimization**: Reduce **static/dynamic power dissipation** while maintaining stability.
    
- **Performance Metrics**: Evaluate **delay**, **Power-Delay Product (PDP)**, and **Static Noise Margin (SNM)**.
    
- **Stability Characterization**: Assess **read/write/hold stability** via SNM using butterfly curves.
    

# 2. 6T SRAM Cell Architecture

- **Structure**:
    
    - **6 transistors**: 2 cross-coupled inverters (P1-N1, P2-N2) + 2 access transistors (N3-N4).
        
    - **Operations**:
        
        - **Read**: Pre-charged bitlines (BL/BLB) discharge through access transistors (WL activated).
            
        - **Write**: Strong access transistors override inverter states to store new data.
            
        - **Hold**: Data retained when WL is inactive.
            

# 3. Key Performance Parameters

1. **Power Dissipation**
    
    - **Dynamic Power**: Decreases with scaling (e.g., **4.72 nW at 45 nm → 0.366 nW at 16 nm**) due to lower capacitance.
        
    - **Static Power**: Increases in deep submicron nodes (e.g., **12.99 pW at 45 nm → 46.35 pW at 16 nm**) due to leakage.
        
    - **Total Power**: **91.27% reduction** from 45 nm to 16 nm.
        
2. **Delay**
    
    - **Falling Delay**: Ranges from **128.8 ps (45 nm)** to **139.3 ps (16 nm)**.
        
    - **Rising Delay**: Improves from **222.1 ps (45 nm)** to **177.4 ps (16 nm)** due to faster PMOS switching.
        
3. **Power-Delay Product (PDP)**
    
    - **Energy Efficiency**: PDP reduces by **91.5%** (e.g., **1.06 aJ at 45 nm → 81.2 zJ at 16 nm**).
        
4. **Static Noise Margin (SNM)**
    
    - **Hold SNM (HSNM)**: Degrades by **57.9%** (190 mV → 80 mV) due to increased variability.
        
    - **Read SNM (RSNM)**: Lowest in read mode (50 mV at 45 nm → 40 mV at 16 nm), indicating vulnerability.
        
    - **Write SNM (WSNM)**: Declines by **22.9%** (480 mV → 370 mV) but remains robust.
        

# 4. Stability Analysis via Butterfly Curves

- **Methodology**: SNM measured as the side length of the largest square fitting within inverter VTC curves.
    
- **Findings**:
    
    - **Hold Mode**: Highest SNM (e.g., 190 mV at 45 nm).
        
    - **Read Mode**: Lowest SNM due to voltage divider effect during access.
        
    - **Write Mode**: Strong access transistors improve WSNM but degrade with scaling.
        

# 5. Impact of Technology Scaling

- **Power-Delay Trade-off**:
    
    - **Pros**: Lower dynamic power (91% reduction) and improved delay.
        
    - **Cons**: Higher leakage (static power ↑ 3.6×) and reduced SNM.
        
- **Voltage Scaling**: SNM decreases with lower $V_{DD}$​ (Figures 9–12), necessitating careful voltage selection.
    

# 6. Experimental Results

- **Simulation Setup**: Cadence Virtuoso with PTM models; $V_{DD}$ scaled per node (1.1V at 45 nm → 0.9V at 16 nm).
    
- **Key Observations**:
    
    - **45 nm Node**: Best SNM but higher power.
        
    - **16 nm Node**: Lowest power/delay but poorest stability.
        

# 7. Challenges and Trade-offs

- **Leakage Power**: Dominates at sub-22 nm nodes, requiring leakage-control techniques.
    
- **Stability vs. Performance**: Smaller nodes favor speed/area but need SNM optimization (e.g., transistor sizing).
    

# 8. Conclusion

- **Optimal Node**: **22 nm** balances power (0.934 nW), delay (147 ps), and SNM (410 mV WSNM).
    
- **Key Improvements**:
    
    - **Power**: 91% reduction from 45 nm to 16 nm.
        
    - **Stability**: SNM declines but remains manageable with design tweaks.
        

# 9. Future Work

- **FinFET Integration**: Explore stability in sub-16 nm nodes.
    
- **Low-Power Techniques**: Near-threshold operation for IoT devices.
    

## Key Takeaways for SRAM Design

1. **Technology Scaling**: Smaller nodes (16 nm) offer power/area benefits but require SNM mitigation.
    
2. **Stability Metrics**: SNM is critical for reliability; read mode is the most vulnerable.
    
3. **Design Trade-offs**: Balance power, delay, and noise margins using:
    
    - **Transistor Sizing**: Optimize cell ratio (CR) and pull-up ratio (PR).
        
    - **Voltage Scaling**: Adjust $V_{DD}$​ to maintain SNM.

