#### **Introduction**

The paper provides an updated survey on hardware Trojan detection techniques, focusing on threats arising from the globalized semiconductor supply chain. Hardware Trojans are malicious modifications or inclusions in ICs that can compromise security by leaking sensitive information or causing system failures. The authors classify Trojans into three types (combinational, sequential, and analog) and review detection methods, emphasizing advancements in image-processing-based approaches like Electro-Optical Frequency Mapping (EOFM).

---

### **Key Sections and Contributions**

#### **1. Hardware Trojan Classification**

1. **Combinational Trojans**
    
    - Consist of a **trigger** (e.g., AND gate monitoring rare node conditions) and a **payload** (e.g., OR gate altering outputs).
        
    - Stealthy during manufacturing tests due to low-probability activation.
        
    - Example: _Type-p_ Trojans, where _p_ is the number of trigger inputs (Figure 2a).
        
2. **Sequential Trojans**
    
    - Use state elements (e.g., counters) to activate payloads after a sequence of events or time delays.
        
    - Harder to detect due to rare consecutive trigger conditions (Figure 2b).
        
3. **Analog/RF Trojans**
    
    - Exploit analog properties (e.g., capacitors, crosstalk) to trigger payloads.
        
    - Example: Capacitor-based triggers accumulate charge from nearby wire toggling (Figure 2c).
        
    - RF Trojans leak data wirelessly without disrupting legitimate signals.
        

#### **2. Detection Techniques**

1. **Logic Testing**
    
    - Targets combinational Trojans by generating test vectors to activate rare nodes.
        
    - Limitations:
        
        - Poor coverage for sequential/analog Trojans.
            
        - Scalability issues in large designs.
            
    - Machine learning aids in node controllability/observability analysis (e.g., SCOAP metrics).
        
2. **Side-Channel Analysis**
    
    - Measures power, delay, thermal, or EM variations caused by Trojans.
        
    - **Power-based**: Segments circuits to isolate Trojan-induced power changes (Hossain et al.).
        
    - **Thermal imaging**: Uses quiescent thermal maps (Tang et al.) or golden layout references (Vashistha et al.).
        
    - **Golden-free methods**: Self-referencing techniques mitigate reliance on trusted chips.
        
3. **Optical Imaging (EOFM)**
    
    - **SPARTA method** (Stern et al.):
        
        - Compares EOFM images of functional mode (_f_clk_) and scan mode (_f_scan_in_) to identify malicious flip-flops excluded from scan chains (Figures 4–5).
            
    - Combines SEM imaging with machine learning to detect layout-level modifications.
        

#### **3. Open Challenges and Future Directions**

- **Combinational/Analog Trojans**: Lack efficient detection due to stealthiness.
    
- **Golden Model Dependency**: Many methods require trusted references (simulation data or chips), which are often unavailable.
    
- **Emerging Solutions**:
    
    - Image-processing techniques (e.g., EOFM, SEM) show promise for sequential Trojans.
        
    - Hybrid approaches (e.g., logic testing + imaging) improve detection accuracy.
        

---

### **Conclusion**

The survey highlights progress in hardware Trojan detection but underscores gaps in combating combinational and analog Trojans. Optical imaging and machine learning are emerging as powerful tools, especially for sequential Trojans. Future research should focus on **golden-free methods**, **scalable logic testing**, and **cross-layer detection** (e.g., combining layout inspection with side-channel analysis).

**Acknowledgment**: Supported by NSF and AFRL grants.

**Key References**:

- SPARTA (EOFM-based detection) [48].
    
- Thermal imaging [23], SEM-based Trojan Scanner [49].
    
- Combinational Trojan modeling [15], analog Trojans [34].