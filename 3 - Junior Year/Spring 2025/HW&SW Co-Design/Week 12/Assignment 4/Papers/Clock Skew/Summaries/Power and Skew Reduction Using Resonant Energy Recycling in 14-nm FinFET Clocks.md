# Snippet from Assignment 4

Similarly to the previous paper, the authors of the third paper found that high power consumption and clock skew are the problems with the current state-of-the-art. Clock distribution consume a lot of power due to the large capacitive loads necessary to run with DVFS having limited effect on it. Uneven clock arrival times are common as process variations make it difficult to properly synch the clocks. Additionally, the current resonant techniques to help smooth out the clock suffer from narrow frequency operation and even high clock skew. To solve this problem, the authors introduce the novel **resonant clocking architecture**, which utilizes series LC resonance and inductor matching to reduce clock skew. The proposed schematic can be found below in Figure 6: 

![[Pasted image 20250421104456.png | center]]
<center><b> Figure 6</b>: The Proposed Wideband Resonant Clock Tree Architecture Consists of a System Clock Source as the Root, Followed by a Pulse Generator, Multiple PSR Drivers with On-Chip Inductors, Clock Gaters, Clock Buffers, and Finally, Various Sets of Resonant Pulsed FFs in the Leaf Node [3] </center>

As the name suggests, the resonant clocking architecture uses an *inductor* ($L$) on the discharge path to store energy within a magnetic field, which can be recycled during the next clock edge. This makes it such that only 50% of the switching energy is dissipated, with the other half going directly into charging the capacitor on the next clock edge. It also contains a pulse generator using a XNOR gate and a voltage doubler, which allows for consistent timing. Tuned LC tanks are also introduced, which allows for each clock branch’s inductor to match the load capacitance to equalize the frequencies. Dealing with the load capacitance using an inductor allows the clock skew to drop by around 24 times. The author also promotes two different types of flip-flops (FFs) that can improve on the traditional flip-flips used in non-resonant architectures. Firstly, the 13T Pulsed FF (13TPFF) promises a negative setup time ($-25ps$) for the tradeoff of a larger area by using pulsed clocks for energy recovery. Pulsed Resonant FF (PRFF), on the other hand, has the lowest power guarantees with $35 ps$ of delay. Figure 7 below shows the proposed flip-flops:

![[Pasted image 20250421165920.png | center]]
<center><b> Figure 7</b>:  The Proposed Series Resonant Pulsed FFs use (a) A PSR to Generate Pulse SIgnal to Drive the Register Stage, (b) 13T Register, (c) Pulsed Register, (d) TSPC Register to Implement Three Pulsed FFs [3]</center>

As an experiment, they implemented the various flip-flops combined with the resonant clock architecture and tuned LC tanks on a 14nm FinFET chip. PRFF found a 43% power reduction at 5 GHz, while 13TPFF had 22.7% savings over traditional as well. They found a 91% lower skew with PRFF compared to the state-of-the-art. They also found a low CLK-to-Q delay in each flip flop, with only 35ps and 37.3ps for PRFF and 13TPFF respectfully. These results show that the robustness of the proposed architecture can greatly improve clock skew, leading to a sub-5ps skew, which is much lower than the other methods seen so far.
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