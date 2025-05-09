Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** World Scientific

**DOI**: www.worldscientific.com/doi/pdf/10.1142/9789813225404_0001

**Authors**: Ajey P. Jacobk Ruilong Xie, Min Gyu Sung, Lars Liebmann, Rinus T. P. Lee and Bill Taylor

**Publication Year**: 2025

**Country of Study**: USA

**Tags**: #CMOS #finFet #FEOL #BEOL #SOI #FDSOI #DTCO #DADP #SAQP #channelengineering #gateengineering

```ad-abstract
title: Abstract
collapse: open
The economic health of the semiconductor industry requires substantial scaling of chip power,
performance, and area with every new technology node that is ramped into manufacturing in two year
intervals. With no direct physical link to any particular design dimensions, industry wide the
technology node names are chosen to reflect the roughly 70% scaling of linear dimensions necessary
to enable the doubling of transistor density predicted by Moore’s law and typically progress as 22nm,
14nm, 10nm, 7nm, 5nm, 3nm etc. At the time of this writing, the most advanced technology node in
volume manufacturing is the 14nm node with the 7nm node in advanced development and 5nm in
early exploration. The technology challenges to reach thus far have not been trivial. This review
addresses the past innovation in response to the device challenges and discusses in-depth the
integration challenges associated with the sub-22nm non-planar finFET technologies that are either in
advanced technology development or in manufacturing. It discusses the integration challenges in
patterning for both the front-end-of-line and back-end-of-line elements in the CMOS transistor. In
addition, this article also gives a brief review of integrating an alternate channel material into the
finFET technology, as well as next generation device architectures such as nanowire and vertical FETs.
Lastly, it also discusses challenges dictated by the need to interconnect the ever-increasing density of
transistors.
```

**Embed to Paper**: ![[Scaling Challenges fro Advanced CMOS Devices.pdf]]

## Summary

### **1. Introduction**

- Despite predictions of an end to Moore's Law, scaling continues due to demand from mobile, IoT, and cloud applications.
    
- Every **technology node (~2 years)** must improve **power, performance, and area (PPA)**.
    
- Innovations are needed across:
    
    - **Front-End-of-Line (FEOL)**: Transistor design
        
    - **Back-End-of-Line (BEOL)**: Interconnect
        
    - **Patterning**: Lithography and design rules
        
- This paper reviews past CMOS innovation and prepares for future architectures (finFET, nanowire FET, vertical FET).
    

---

### **2. Challenges and Approaches for CMOS Transistor Scaling**

#### **2.1 Channel and Gate Engineering**

- Key metric: Gate must **electrostatically control the channel** even when off.
    
- Early techniques:
    
    - **Shallow source/drain extensions**
        
    - **Halo doping** to control leakage
        
- Transitioned from bulk silicon to **SOI (Silicon-On-Insulator)**:
    
    - **PDSOI** (partially depleted)
        
    - **FDSOI** (fully depleted) improves control and allows back-biasing.
        

##### 🔍 _Figures of Interest_:

- **Fig. 2**: Shows short-channel effects and the importance of shallow source/drain extensions.
    
- **Fig. 3**: Comparison between Bulk, PDSOI, and FDSOI devices.
    
- **finFET** (tri-gate) emerged after planar scaling hit limits.
    
    - **Electrostatic control** on three sides improves ON/OFF current ratios.
        
    - Scaling challenges appear <7nm → transition to **gate-all-around (GAA)** devices (e.g., stacked nanowires, vertical FETs).
        

##### 🔍 _Figure 5_:

- Shows architecture progression: finFET → nanowire → vertical FET.
    
- Gate materials evolution:
    
    - **High-k/Metal Gate (HKMG)** replaced poly gates (45nm node) to address leakage and poly depletion.
        
    - **Replacement Metal Gate (RMG)** allows thermal processing before inserting the final gate.
        
    - Next-gen: **Negative Capacitance FETs (NCFETs)** for steeper subthreshold slope.
        
- **Stress engineering** improves mobility:
    
    - Tensile for electrons (NMOS), compressive for holes (PMOS)
        
    - **Channel orientation** (e.g., (111) silicon) and **material substitution** (e.g., SiGe, InGaAs, MoS₂) also affect mobility.
        

##### 📊 _Table 1_:

- Compares materials: Si, Ge, InAs, InSb – showing mobility, bandgap, and other key properties.
    

#### **2.2 Source and Drain Contact Engineering**

- Resistance sources:
    
    1. Spreading resistance under extensions
        
    2. Under spacers
        
    3. Sheet resistance
        
    4. Contact resistance (Si-silicide)
        
    5. Silicide-metal contact
        
- Techniques:
    
    - **Advanced annealing**: Flash, laser anneals
        
    - **Self-aligned contact (SAC)**
        
    - **Dual silicide approach** for NFET/PFET
        
    - **Low-k spacers** to reduce gate-to-contact capacitance
        
    - Consideration of **vertical transistors** for reduced contact resistance
        

---

### **3. CMOS Interconnect Scaling (BEOL)**

- BEOL challenges:
    
    - **RC delay**, power dissipation (up to 75% in some chips), signal integrity
        
- Innovations:
    
    - **Low-k dielectrics**
        
    - **DTCO (Design-Technology Co-Optimization)** for layout-aware routing
        
    - Future: **Optical interconnects**, **neuromorphic designs** to reduce wire-related loads
        

---

### **4. Advanced Patterning for CMOS**

#### **4.1 Lithography Limits and k₁ Factor**

- Lithography is governed by:

$$R=\frac{k_1 \lambda}{NA}$$​
    
Where $k_1$​ is a process factor.
    
- Resolution improvements slowed with 193nm lithography.
    
- **Computational lithography** emerged:
    
    - Optical proximity correction (OPC)
        
    - Lithography-friendly design (LFD)
        
    - **Double patterning**, **Self-aligned Double Patterning (SADP)**, and **Quadruple (SAQP)**
        

##### 🔍 _Figure 6 & 7_:

- Show how shrinking k₁ forced tighter design rules, eventually enabling finFETs.
    

#### **4.1.1 Scaling Roadmap**

- **Table 2**: Wire pitch, poly pitch, fin pitch scaling for 14nm → 5nm
    
- Pitch limits reached:
    
    - 40nm poly pitch (gate control limit for finFET)
        
    - 24nm fin pitch (mechanical/process limit)
        

##### 🔍 _Figures 9 & 10_:

- Highlight resolution demands and need for **DTCO** (not pitch scaling alone).
    

#### **4.1.2 DTCO and Standard Cell Design**

- Example: AOI (And-Or-Invert) logic cell used to explain:
    
    - Role of routing
        
    - Need for **multi-patterning in metal-1**
        
    - Challenge of maintaining **bidirectional metal layers**
        

##### 🔍 _Figures 11 & 12_:

- Show AOI layout at 14nm and 10nm with triple-patterned M1 metal.
    

---

### **5. Design-Technology Co-Optimization (DTCO)**

- Core concept: co-design layout, device, and process rules to maximize yield and performance.
    
- Impacted by:
    
    - Poly pitch
        
    - Fin pitch
        
    - Metal grid uniformity
        
    - Device layout constraints (e.g., unidirectional gates)
        

---

### **6. Summary**

- CMOS scaling has evolved from **planar bulk** → **finFET** → **GAA nanowire/vertical FETs**.
    
- Challenges exist in:
    
    - **Electrostatics** (OFF-state control)
        
    - **Contact resistance and parasitics**
        
    - **Interconnect energy**
        
    - **Lithography and patterning restrictions**
        
- Innovations like **SOI**, **strain**, **high-k/metal gates**, **DTCO**, and **novel materials (e.g., InGaAs, MoS₂)** enable continued scaling.
    
- Co-optimization across all levels (FEOL, BEOL, patterning, layout) is essential for 5nm and beyond.