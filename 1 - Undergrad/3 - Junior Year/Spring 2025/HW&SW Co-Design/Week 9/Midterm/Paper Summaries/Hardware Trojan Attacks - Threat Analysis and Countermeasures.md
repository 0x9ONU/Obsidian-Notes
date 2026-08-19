#### **1. Introduction**

The paper examines **hardware Trojans**—malicious modifications to integrated circuits (ICs) during design or fabrication—which undermine hardware trust and pose severe security risks. Modern ICs are vulnerable due to globalized supply chains, reliance on third-party IP cores, and outsourced manufacturing. Trojans can cause operational failures, leak sensitive data (e.g., cryptographic keys), or enable privilege escalation. Unlike software Trojans, hardware Trojans are nearly impossible to remove post-fabrication, making detection and prevention critical.

#### **2. Threat Analysis and Attack Models**

- **Attack Vectors**: Trojans can be inserted at any stage of the IC lifecycle (Fig. 2), including:
    
    - **Design**: Untrusted CAD tools or third-party IPs.
        
    - **Fabrication**: Malicious alterations in foundries.
        
    - **Deployment**: Exploitation of rare conditions in-field.
        
- **Comparison with Faults and Software Trojans**:
    
    - _Faults_ are accidental; Trojans are intentional (Table 1).
        
    - _Software Trojans_ can be patched; hardware Trojans persist (Table 2).
        
- **Complex Attacks**: Collusion between adversaries (e.g., design + fabrication) can create stealthy, multi-stage Trojans (e.g., leaking keys via side channels).
    

#### **3. Trojan Taxonomy and Examples**

Trojans are classified by **trigger** and **payload** (Fig. 4):

- **Triggers**:
    
    - _Digital_: Combinational (rare logic conditions) or sequential (state machines).
        
    - _Analog_: Temperature, voltage, or aging effects.
        
- **Payloads**:
    
    - _Functional_: Alters logic/memory (e.g., flipping bits).
        
    - _Parametric_: Affects power, delay, or reliability.
        
    - _Side-Channel Leakage_: Exfiltrates data via power/EM signals (Fig. 3(d)).
        
    - _Denial-of-Service (DoS)_: Disables critical functions.
        

#### **4. Countermeasures**

##### **A. Detection Approaches** (Fig. 5)

1. **Destructive**: Reverse engineering (e.g., SEM imaging).
    
    - _Limitations_: Costly, non-scalable, and ineffective for partial-lot attacks.
        
2. **Non-Destructive**:
    
    - _Logic Testing_:
        
        - Targets rare triggers using statistical methods (e.g., MERO [8]).
            
        - Challenges: Large Trojan space, rare activation conditions.
            
    - _Side-Channel Analysis_:
        
        - Measures power, delay, or leakage (Table 3).
            
        - Techniques: Static current (I_DDQ), transient current (I_DDT), path delay.
            
        - Challenges: Process variations mask small Trojans (Fig. 8(a)).
            
    - _Golden-Free Methods_: Self-referencing (e.g., TeSR [72]) compares a chip’s signature over time.
        

##### **B. Design for Security (DfS)**

1. **Prevention**:
    
    - _Obfuscation_: Hides rare triggers via state-space expansion (Fig. 11).
        
    - _Layout Filling_: Uses functional filler cells (e.g., BISA [50]) to deny space for Trojans.
        
    - _Split Manufacturing_: Separates FEOL/BEOL processes to obscure design intent.
        
2. **Facilitation**:
    
    - On-chip monitors (e.g., current sensors) improve detection sensitivity (Fig. 12).
        
    - Scan-chain modifications to eliminate rare-trigger nets.
        

##### **C. Runtime Monitoring**

- **Configurable Monitors**: Reconfigurable logic checks for anomalies (Fig. 13).
    
- **Variant Execution**: Runs redundant tasks on multiple cores to detect discrepancies.
    
- **Hardware-Software Guards**: Combines OS checks with hardware modules.
    

#### **5. Challenges and Future Directions**

- **Emerging Threats**: Analog Trojans, nano-scale device vulnerabilities, and aging-based attacks.
    
- **Unified Metrics**: Need for standardized trust quantification.
    
- **Integrative Solutions**: Combining DfS, testing, and runtime monitoring (Fig. 14).
    
- **Scalability**: Adapting techniques for large, heterogeneous SoCs.
    

#### **6. Conclusion**

Hardware Trojans represent a critical threat to IC security, demanding multi-layered countermeasures. No single solution exists; effective protection requires:

1. **Design-Time**: Obfuscation, split manufacturing, and IP trust verification.
    
2. **Test-Time**: Hybrid logic/side-channel detection.
    
3. **Runtime**: Continuous monitoring to mitigate undetected Trojans.  
    Future work must address evolving attack models (e.g., analog Trojans) and scalability for next-generation nanoscale devices.
    

**Key References**:

- [4] IC fingerprinting via power analysis.
    
- [8] MERO: Statistical logic testing for rare triggers.
    
- [49] Hardware obfuscation techniques.
    
- [72] Temporal self-referencing (TeSR) for golden-free detection.
    

This paper provides a comprehensive survey of hardware Trojan threats and defenses, emphasizing the need for cross-disciplinary collaboration to secure hardware ecosystems.