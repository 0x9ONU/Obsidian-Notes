

# **Objective of the Paper

The paper introduces **CSAM (Clock Skew-Aware Aging Mitigation)**, a technique to combat **Negative Bias Temperature Instability (NBTI)**-induced aging in digital circuits. By jointly optimizing **clock skew** and **logic path aging**, CSAM improves circuit **lifetime** and reduces **area overhead** compared to conventional methods. The approach integrates **input vector control (IVC)**, **internal node control (INC)**, and **clock gating cell selection** (NAND vs. NOR) to mitigate asymmetric aging caused by power management techniques like clock gating.

# Key Problems Addressed

1. **NBTI-Induced Aging**
    
    - NBTI increases PMOS threshold voltage (VthVth​) over time, degrading circuit speed.
        
    - **Static NBTI** (during standby mode) is worse than **dynamic NBTI** (active mode), leading to **asymmetric aging** in clock trees and logic paths.
        
2. **Clock Skew Degradation**
    
    - Clock gating freezes parts of the clock tree, causing **non-uniform aging** in buffers/ICG cells.
        
    - NAND-based ICG cells age differently than NOR-based ones, introducing **skew variations**.
        
3. **Timing Violations**
    
    - Aging increases logic path delays and clock skew, risking setup/hold time violations.
        
    - Conventional methods address **either logic or clock tree aging**, missing joint optimization opportunities.
        
# Proposed Solution: CSAM Technique

CSAM combines three strategies to mitigate aging:

1. **Input Vector Control (IVC)**
    
    - Applies optimal input vectors during standby to minimize NBTI stress on logic paths.
        
    - Uses preset/reset signals of flip-flops (no area overhead).
        
2. **Internal Node Control (INC)**
    
    - Inserts transmission gates to freeze internal nodes at HIGH/LOW levels during standby.
        
    - Reduces static NBTI but incurs area overhead.
        
3. **Clock Skew Management**
    
    - Selects **NAND or NOR ICG cells** to balance aging-induced skew.
        
    - NAND ICG: Freezes clock trunk at HIGH (less aging).
        
    - NOR ICG: Freezes clock trunk at LOW (more aging).
        

## Optimization Framework

- **Objective 1: Maximize Lifetime**  
    Minimize worst-case delay degradation across all critical paths:
    
    $$\mbox{Minimize Max}⁡({D_{CPF_i}})$$
    
    where $D_{CPFi}$​​ includes logic path delay, clock skew, and flip-flop delays.
    
- **Objective 2: Minimize Area Overhead**  
    Minimize INC transmission gates while meeting timing constraints:
    $$\mbox{Minimize}\sum C_j \quad \mbox{subject to } \quad D_{CPF_i}<\mbox{Clock Period}$$
- **Nonlinear Programming**  
    Formulates delay degradation as a function of signal probabilities (SPs) and solves using the **NLOPT solver**.
# Experimental Results

Tested on **ISCAS’89 and ITC’99 benchmarks** (45nm technology):

1. **Lifetime Improvement**
    
    - CSAM achieves **34% average lifetime increase** vs. conventional methods (Fig. 7).
        
    - Best case: **77% improvement** (e.g., s1488 benchmark).
        
2. **Area Overhead Reduction**
    
    - **25.7% fewer INC structures** on average (Fig. 8).
        
    - Up to **90.9% reduction** in some cases (e.g., s838 benchmark).
        
3. **Clock Skew Adjustment**
    
    - CSAM strategically **increases/decreases skew** to relax timing constraints (Fig. 9).
        
    - Example: For benchmark _b15_, skews were shifted negative to extend path delays.
        
4. **Delay Degradation**
    
    - CSAM reduces aging-induced delay degradation by **10–60 ps** compared to baselines (Fig. 6).
        
# How CSAM Solves Clock Skew Problems in Processors

1. **Joint Optimization of Clock and Logic Aging**
    
    - Unifies clock skew management with logic path aging mitigation, avoiding suboptimal fixes.
        
2. **Adaptive ICG Cell Selection**
    
    - Dynamically chooses NAND/NOR ICG cells to balance skew vs. aging trade-offs.
        
3. **Exploits Skew Slack**
    
    - Uses **positive/negative skew** to relax timing constraints, reducing INC/IVC overhead.
        
    - Example: A **negative skew** (capture clock arrives later) allows more delay degradation before violating timing.
        
4. **Scalability**
    
    - Benchmarks with **30K+ gates** (e.g., b18) show consistent improvements.
        
# Conclusion & Advantages

- **Simultaneous aging mitigation** for clock trees and logic paths.
    
- **34% longer lifetime** or **25.7% lower area overhead** vs. conventional techniques.
    
- **No runtime overhead** (design-time optimization).
    
- **Compatible with commercial tools** (e.g., Synopsys ICC2).
## Future Work

- Extend to **PBTI (PMOS aging)** in advanced nodes.
    
- Integrate with **dynamic voltage/frequency scaling (DVFS)**.