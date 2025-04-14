
# Objective of the Paper

The paper addresses **clock skew minimization** in digital circuits by mitigating the effects of **Negative Bias Temperature Instability (NBTI)** and **process variations**. It proposes a **two-phase clocking scheme** combined with **pipelining** and a **buffer replacement algorithm** to reduce aging-induced skew, ensuring long-term reliability and performance in deep-submicron technologies.

# Key Problems Addressed

1. **Clock Skew and NBTI Aging**
    
    - NBTI increases PMOS threshold voltage (VthVth​) over time, degrading clock buffer delays unevenly and introducing **aging skew**.
        
    - Clock gating exacerbates skew by creating non-uniform stress conditions in clock paths.
        
2. **Single-Phase Clock Limitations**
    
    - Single-phase clock distributions suffer from **race conditions** and tight timing constraints.
        
    - Skew margins shrink with higher clock rates, risking circuit failure.
        
3. **Process Variations**
    
    - Variability in fabrication (e.g., VthVth​ mismatch) worsens skew unpredictability.
# Proposed Solutions

1. **Two-Phase Non-Overlapping Clocking**
    
    - Uses two clock phases (Φ1Φ1​ and Φ2Φ2​) generated from a single global clock (Fig. 3).
        
    - **Advantages**:
        
        - Eliminates race conditions by ensuring non-overlapping edges.
            
        - Provides **25% skew margin** per cycle (Fig. 2).
            
        - Compatible with **C²MOS latches** for low-power operation.
            
2. **Pipelining Technique**
    
    - Divides logic into smaller stages separated by registers (Fig. 4).
        
    - **Benefits**:
        
        - Reduces capacitive load per stage, enabling lower supply voltage (βVddβVdd​) and **power savings** (Eq. 6–7).
            
        - Mitigates NBTI impact by shortening critical paths.
            
3. **NBTI-Aware Buffer Replacement Algorithm**
    
    - Replaces **standard-VthVth​ clock buffers** with **high-VthVth​ buffers** in critical paths (Fig. 8).
        
    - **Steps**:
        
        - Identify buffers with high aging skew using STA and NBTI modeling (Eq. 1–3).
            
        - Apply a "divide and conquer" approach to optimize replacements (Eq. 9).
            
    - **Outcome**:
        
        - **Negligible area/power overhead** (only buffer swaps).
            
        - Up to **60% skew reduction** under process variations.
# Key Innovations

1. **Aging-Aware Timing Analysis**
    
    - Integrates NBTI models (Reaction-Diffusion) with static timing analysis (STA) to predict long-term skew.
        
2. **Two-Phase Clock Generator**
    
    - Divides a global clock into Φ1/Φ2Φ1​/Φ2​ with AND gates (Fig. 3), ensuring **glitch-free operation**.
        
3. **Pipeline Optimization**
    
    - Combines **flip-flops (edge-triggered)** and **latches (level-triggered)** for **high speed + low power**.
# Experimental Results

1. **Skew Reduction**
    
    - High-VthVth​ buffer replacement reduces skew by **51–60%** under NBTI and process variations.
        
2. **Power Savings**
    
    - Pipelining cuts power by **β2β2** (Eq. 6) via voltage scaling.
        
3. **Reliability**
    
    - Two-phase clocks eliminate race conditions, validated by simulation (Fig. 8).

# How It Solves Clock Skew Problems

1. **NBTI Mitigation**
    
    - High-VthVth​ buffers degrade slower, balancing aging across clock paths.
        
    - Pipelining reduces stress on individual buffers.
        
2. **Robust Clocking**
    
    - Two-phase clocks provide inherent skew tolerance.
        
3. **Scalability**
    
    - Algorithm adapts to arbitrary clock tree sizes with minimal overhead.

# Conclusion & Advantages

- **Two-phase clocking + pipelining** enhances speed, power efficiency, and skew tolerance.
    
- **Buffer replacement algorithm** ensures aging resilience with no area penalty.
    
- **Compatible with CMOS** and scalable to advanced nodes.
    

## Future Work

- Extend to **multi-phase clocks** for higher frequencies.
    
- Integrate **dynamic voltage/frequency scaling (DVFS)** for adaptive power management.