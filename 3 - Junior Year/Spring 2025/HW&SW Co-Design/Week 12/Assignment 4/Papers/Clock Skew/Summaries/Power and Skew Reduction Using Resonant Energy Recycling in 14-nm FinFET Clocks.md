
# Objective of the Paper

The paper introduces a **resonant clocking architecture** for 14nm FinFET designs, leveraging **series LC resonance** and **inductor matching** to **recycle switching energy** and **reduce clock skew**. This approach achieves **43% power savings** and **91% skew reduction** compared to conventional CMOS clock trees, enabling efficient high-frequency (1–5 GHz) operation.

# Key Problems Addressed

1. **High Power Consumption**
    
    - Clock networks consume significant dynamic power due to capacitive charging/discharging.
        
    - Traditional energy-saving techniques (e.g., DVFS, clock gating) have limited efficacy.
        
2. **Clock Skew**
    
    - Process variations and load mismatches cause **uneven clock arrival times**, limiting performance.
        
    - Conventional LC resonant techniques suffer from **narrow frequency bands** and **high skew**.
        
3. **Integration Challenges**
    
    - Existing EDA tools lack support for resonant clocking.
        
    - Inductor non-linearity complicates design.
        
# Proposed Solutions

## 1. Series Resonant Clock Architecture

- **Energy Recycling**:
    
    - An inductor (LL) in the discharge path stores energy as a magnetic field, recycling it during the next clock edge (Fig. 1b).
        
    - **Power Savings**: Only 50% of switching energy is dissipated (vs. 100% in conventional CMOS).
        
- **Pulse Generator**:
    
    - Uses an XNOR gate and voltage doubler to create **dual-rail boosted pulses** (VSRVSR​) from a global clock (Fig. 2).
        
    - Pulse width Td=πL1C1Td​=πL1​C1​
        

- - ​ ensures consistent timing.
        

## 2. Inductor Matching for Skew Reduction

- **Tuned LC Tanks**:
    
    - Each clock branch’s inductor (LSR1−8LSR1−8​) is matched to its load capacitance (CSR1−8CSR1−8​) to equalize resonant frequencies (Fig. 5).
        
    - **Result**: Skew drops from **51.1 ps** (conventional) to **2.1–4.6 ps** (resonant).
        

## 3. Resonant Pulsed Flip-Flops (FFs)

- **13T Pulsed FF (13TPFF)**:
    
    - Edge-triggered, uses pulsed clock (PclkPclk) for energy recovery (Fig. 3b).
        
    - **Trade-offs**: Larger area (1.75× PSFF) but **negative setup time** (−25 ps) for timing flexibility.
        
- **Pulsed Resonant FF (PRFF)**:
    
    - Lowest power (43% savings vs. PSFF) and **35 ps CLK-to-Q delay**.
        

# Key Innovations

1. **Wideband Resonance**
    
    - Series LC topology supports **1–5 GHz** operation, unlike narrowband parallel resonance.
        
2. **Dual-Rail Booster**
    
    - Doubles pulse amplitude (VSRVSR​) for robust rail-to-rail swings.
        
3. **Process Variation Resilience**
    
    - Monte Carlo simulations confirm **±10% length variation tolerance** (Fig. 4).
        

# Experimental Results (14nm FinFET)

1. **Power Savings**
    
    - **PRFF**: 43% lower power than PSFF at 5 GHz (Table II).
        
    - **13TPFF**: 22.7% savings despite higher FF power (Fig. 6).
        
2. **Skew Reduction**
    
    - **91% lower skew** (4.6 ps vs. 51.1 ps) with PRFF (Table II).
        
3. **Performance**
    
    - **CLK-to-Q Delay**: 35 ps (PRFF) vs. 37.3 ps (13TPFF) (Table I).
        

# How It Solves Clocking Challenges

1. **Energy Efficiency**
    
    - Recycling discharge energy cuts dynamic power by **half**.
        
2. **Skew Mitigation**
    
    - Inductor matching compensates for load mismatches, enabling **sub-5 ps skew**.
        
3. **Scalability**
    
    - Compatible with **32K+ FFs** and standard cell libraries (Fig. 7).
# Conclusion & Advantages

- **43% power reduction** and **91% skew improvement** vs. conventional clock trees.
    
- **Plug-and-play integration** with existing EDA flows.
    
- **Robustness**: Tolerates process variations and wide frequency ranges.
    

## Future Work

- Extend to **3D ICs** and **sub-14nm nodes**.
    
- Explore **adaptive inductor tuning** for runtime optimization.