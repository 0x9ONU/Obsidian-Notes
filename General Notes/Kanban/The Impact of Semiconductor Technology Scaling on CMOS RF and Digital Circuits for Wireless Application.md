Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE

**DOI**: https://koasas.kaist.ac.kr/bitstream/10203/21046/1/000230123100019.pdf

**Authors**: Kwyro Lee, Ilku Nam, Ickjin Kwon, Joonho Gil,  Kwangseok Han, Sungchung Park, and Bo-Ik Seo

**Publication Year**: 2005

**Country of Study**: USA

**Tags**: #CMOS #RF #integratedpassives

```ad-abstract
title: Abstract
collapse: open
The impact of CMOS technology scaling on the various radio frequency (RF) circuit components such as active, passive and digital circuits is presented. Firstly, the impact of technology scaling on the noise and linearity of the low-noise amplifier (LNA) is thoroughly analyzed. Then two new circuits, i.e., CMOS complementary parallel push-pull (CCPP) circuit and vertical-NPN (V-NPN) circuit for direct-conversion receiver (DCR), are introduced. In CCPP, the high RF performance of pMOS comparable to nMOS provides single ended differential RF signal processing capability without the use of a bulky balun. The use of parasitic V-NPN bipolar transistor, available in triple well CMOS technology, has shown to provide more than an order of magnitude improvement in 1 noise and dc offset related problems, which have been the bottleneck for CMOS single chip integration. Then CMOS technology scaling for various passive device performances such as the inductor, varactor, MIM capac- itor, and switched capacitor, is discussed. Both the forward scaling of the active devices and the inverse scaling of interconnection layer, i.e., more interconnection layers with effectively thicker total dielectric and metal layers, provide very favorable scenario for all passive devices. Finally, the impact of CMOS scaling on the various digital circuits is introduced, taking the digital modem blocks, the various digital calibration circuits, the switching RF power amplifier, and eventually the software defined radio, as examples
```

**Embed to Paper**: ![[The Impact of Semiconductor Technology Scaling on CMOS RF and Digital Circuits for Wireless Applications.pdf]]

## Summary

### **I. Introduction**

- Wireless communication demand is exploding, driven by Edholm’s law of bandwidth (analogous to Moore’s law).
    
- Semiconductor scaling plays a crucial role in enabling **low-cost, low-power** RF solutions.
    
- This paper evaluates how CMOS technology scaling affects **RF active circuits**, **passive devices**, **digital baseband**, and **digital RF circuits**.
    

---

### **II. Impact of Active Device Scaling on RF Active Circuits and Systems**

#### Key Insights:

- **MOSFET current** scaling deviates from classic long-channel behavior due to electric field effects.
    
- In RF design, matching to 50 Ω is critical, and **device width** is adjusted accordingly.
    

#### Noise Figure (NF) Scaling:

- **Fig. 1**: Shows that **NF improves as gate length decreases**.
    
- Based on Fukui's empirical model (originally for GaAs MESFETs), works well for CMOS too.
    

#### Input Matching Sensitivity:

- **Fig. 2 & 3**: NF is relatively **insensitive to gate-source bias** and matching errors in scaled CMOS, simplifying **LNA design**.
    

#### Linearity (IIP₃) Degradation:

- **Figs. 4–6**: Show that linearity worsens with scaling due to degraded transconductance linearity.
    
- Mitigation:
    
    - Feed-forward methods: multiple gate-width FETs
        
    - Feedback: inductive/capacitive/resistive degeneration
        

#### Complementary Push-Pull Circuits (CCPP):

- **Figs. 7–8**:
    
    - pMOS performance improves at smaller nodes → viable for RF.
        
    - CCPP provides **symmetric differential operation without a bulky balun**.
        

#### Parasitic Vertical-NPN (V-NPN) Transistors:

- **Figs. 9–12**:
    
    - Triple-well CMOS yields V-NPNs useful in analog/RF design.
        
    - **V-NPN Gilbert mixers** outperform nMOS ones in **low-frequency noise and DC offset**.
        

---

### **III. Impact of CMOS Scaling for Passive Devices**

#### Scaling Trends:

- Unlike transistors, **top metal layers and dielectrics scale inversely** → thicker → better performance for passives.
    

#### On-Chip Inductors:

- **Fig. 13**: Quality factor improves with more metal layers and better materials (Cu replaces Al).
    

#### MOS Varactors:

- **Fig. 14**: Quality factor improves due to:
    
    - Shorter channel → lower resistance
        
    - Thinner oxide → higher capacitance
        

#### MIM Capacitors:

- **Fig. 15**:
    
    - Quality improves with reduced metal resistivity and substrate parasitics.
        
    - Slight increase in density (cap/area).
        

#### Switched Capacitors:

- **Fig. 16**: Quality factor and on/off impedance ratio improve as scaling enhances transistor and MIM quality.
    

> 🔧 Key takeaway: All passive components benefit from CMOS scaling, leading to more efficient **low-power RF design**.

---

### **IV. Impact of CMOS Scaling for Digital Baseband Circuitry**

#### Digital vs. Analog Power Scaling:

- **Fig. 17**: Power consumption of **digital matched filters** decreases rapidly with scaling.
    
- Analog circuits do **not scale similarly**, creating a crossover point at 0.18μm.
    

#### Shannon Limit and DSPs:

- **Fig. 18**: Shows that **Moore's law enables DSPs to achieve Shannon’s limit with low power**.
    
- DSP efficiency increases 4× every 3 years.
    

#### On-Chip Calibration:

- CMOS enables **fully automated calibration/trimming** using:
    
    - Logic
        
    - Memory
        
    - Measurement circuits
        

This removes the need for expensive external test equipment and compensates for analog imperfections.

---

### **V. Impact of CMOS Scaling for Digital RF**

#### 1. Digital RF Power Amplifier:

- **Switching-mode PAs** offer near-100% efficiency.
    
- Digitally modulated signals (e.g., PWM) → highly programmable with minimal distortion.
    

#### 2. Ultra-Wideband (UWB) Radio:

- UWB bypasses analog filters and uses **baseband digital signal** directly in RF.
    
- Scales well with CMOS → ideal for **digital SoCs** in short-range high-speed applications.
    

> 📡 Vision: Fully digital radio where only LNA and ADC remain analog.

---

### **VI. Conclusion**

- Semiconductor scaling allows **billions of transistors** in mobile devices with **hundreds of mW** power budgets.
    
- It simplifies RF and digital design, reduces cost, and enables **highly integrated wireless systems**.
    
- Trend: Toward **all-digital radios** with programmable flexibility—key for SDR and future wireless standards.
    

---

### 📌 Figures of Interest

|**Figure**|**Content**|
|---|---|
|Fig. 1|NF vs. gate length|
|Fig. 2–3|NF insensitivity to bias and mismatch|
|Fig. 4–6|Linearity degradation and IIP₃ trends|
|Fig. 7–8|CCPP amplifier and pMOS RF viability|
|Fig. 9–12|V-NPN cross-section, NF improvement, DC offset|
|Fig. 13–16|Passive device scaling (inductor, varactor, MIM, switched cap)|
|Fig. 17|Power scaling: digital vs. analog filters|
|Fig. 18|Achieving Shannon’s limit using scaled DSPs|
