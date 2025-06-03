Date: 5th May 2025
Date Modified: 5th May 2025
File Folder: Kanban
## Publication Information

**Database:** IntechOpen

**DOI**: DOI: 10.5772/intechopen.105717

**Authors**: Len Luet Ng, Kim Ho Yeap, Magdalene Wan Ching Goh and Veerendra Dakulagi

**Publication Year**: 2022

**Country of Study**: China

**Tags**: #hwsw #dynamicpower #staticpower #switchingpower #short-circuitpower, #leakagepower #clockfrequency #dynamiceffectivecapacitance #switchingactivity

```ad-abstract
title: Abstract
collapse: open
In this chapter, we explain the two types of power consumption found in a complementary metal-oxide-semiconductor (CMOS) circuit. In general, a CMOS circuit tends to dissipate power at all times—be it active or inactive. The power consumed by the circuit when it is performing computational tasks is known as dynamic power. On the contrary, the power lost due to current leakage during which the circuit is dormant is referred to as static power. By carefully and properly designing the circuit, current leakage can be suppressed to its minimum. Hence, dynamic power consumption is usually significantly higher than its static counterpart. Some of the techniques that could be adopted to save dynamic power consumption include reducing the supply voltage, clock frequency, clock power, and dynamic effective capacitance. By probing into the activity factors of the design modules, the techniques can be applied to those with high power consumption
```

**Embed to Paper**: [[Power Consumption in CMOS.pdf]]

## Summary

This chapter provides a comprehensive analysis of power consumption in CMOS (Complementary Metal-Oxide-Semiconductor) circuits, focusing on the two primary types: **dynamic power** (active power) and **static power** (leakage power). The authors also discuss optimization techniques to mitigate these power concerns.

---

### **1. Introduction to CMOS Power Consumption**

- CMOS circuits are ubiquitous in modern electronics due to their low power consumption and high noise immunity.
    
- As transistor sizes shrink (now down to 5 nm), power efficiency becomes critical, especially with billions of transistors integrated into a single chip.
    
- The total power consumption $P_{Total}$​ is the sum of dynamic power $P_{Dynamic}$​ and static power $P_{static}$​:

$$
P_{total} = P_{Dynamic} + P_{Static}
$$

---

#### **2. Dynamic Power Consumption**

Dynamic power is dissipated when the circuit is active and performing computations. It has two components:

1. **Switching Power ($P_{switch}$​)**:
    
    - Occurs due to charging/discharging of load capacitances during logic transitions (0 ↔ 1).
        
    - Calculated as:
        $$
P_{switch} = f_{clk}\times C_{dyn}\times V_{DD}^{2}
$$
        
        where:
        
        - $f_{clk}$​: Clock frequency.
            
        - $C_{dyn}$​: Dynamic effective capacitance (product of load capacitance CLCL​ and activity factor AFAF).
            
        - $V_{DD}$​: Supply voltage.
            
    - **Activity Factor ($A_{F}$)**: Probability of a node switching (e.g., $A_{F}=1$ for a clock signal, $A_{F}=0.5$ for a data signal).
        
2. **Short-Circuit Power ($P_{short}$​)**:
    
    - Occurs when both NMOS and PMOS transistors are briefly ON simultaneously during logic transitions, creating a temporary short-circuit path between $V_{DD}$​ and GND.
        
    - Expressed as:
        $$
P_{short}=T_{sc}\times V_{DD} \times I_{peak}
$$
        
        where $T_{sc}$​ is the signal transition time and $I_{peak}$​ is the peak current.
        
    - Less significant than switching power but contributes to noise.
        

---

#### **3. Static Power Consumption**

Static power is dissipated even when the circuit is idle, primarily due to **leakage currents**:

1. **Subthreshold Leakage**:
    
    - Weak current flowing between source and drain when the transistor is OFF (gate voltage < threshold voltage $V_{{TH}}$​).
        
    - Exacerbated by shrinking transistor sizes, which reduce $V_{TH}$​.
        
2. **Gate Leakage**:
    
    - Caused by electrons tunneling through the thin oxide layer when voltage is applied to the gate.
        
    - Becomes significant at nanometer-scale technology nodes.
        

- Static power is given by:
    $$
P_{statc} = V_{DD} \times I_{leakage}
$$
    
    where $I_{leakage}$​ is the total leakage current.

---

#### **4. Power Optimization Techniques**

The authors propose several methods to reduce power consumption, focusing on dynamic power due to its dominance:

1. **Dynamic Frequency Scaling**:
    
    - Adjusts clock frequency $f_{clk}$​ based on workload. Saves energy but may increase execution time.
        
2. **Multiple Supply Voltages**:
    
    - Uses lower $V_{DD}$​ for non-critical paths. Reduces power quadratically (since $P ∝ V_{DD}^{2}$​) but complicates power grid design.
        
3. **Clock Gating**:
    
    - Disables clock signals to idle modules, reducing switching power. Saves up to 75% clock power.
        
4. **Gate Downsizing**:
    
    - Reduces parasitic capacitance $C_{dyn}$​ by shrinking gates. May trade off speed for power savings (e.g., 25% power reduction with 5% delay increase).
        
5. **Interconnect Optimization**:
    
    - Minimizes capacitance of high-activity wires through spacing, routing, and net ordering (e.g., placing LSB signals centrally to reduce cross-capacitance).
        
6. **Floating Unused Conductors**:
    
    - Leaves adjacent wires unconnected to reduce coupling capacitance, saving ~15.5% power.
        

---

#### **5. Switching Activity Analysis**

- **Switching Activity (SA)** combines toggle rate (frequency of transitions) and static probability (likelihood of a logic state).
    
- Critical for identifying high-power modules and applying targeted optimizations.
    

---

#### **6. Conclusion**

- Dynamic power (switching + short-circuit) dominates during active operation, while static power (leakage) persists in idle states.
    
- Key optimization knobs:
    
    - Reduce $V_{DD}, f_{clk}, C_{dyn}$
        
    - Mitigate leakage via advanced transistor designs (e.g., FinFETs).
        
- Techniques must balance power savings with performance, area, and design complexity.
    

---

### Key Takeaways:

- **Switching Power**: Largest contributor; minimized by lowering $V_{DD}, f_{clk}, C_{dyn}$​,
    
- **Leakage Power**: Growing concern in nanometer-scale designs; addressed via transistor architecture (e.g., FinFETs) and power gating.
    
- **Optimization Trade-offs**: Voltage scaling and clock gating are effective but require careful implementation to avoid performance degradation.

