
#### **Objective**:

The paper explores the feasibility of implementing a ransomware attack directly in hardware, termed **hardware ransomware**, as a specialized form of a hardware Trojan. Unlike traditional software-based ransomware, this attack embeds malicious logic into integrated circuits (ICs) during design or fabrication, enabling data encryption and ransom demands at the hardware level.

#### **Key Contributions**:

1. **Proposal of Two Hardware Ransomware Architectures**:
    
    - **Low-Latency ECDH Core (LL-ECDH)**: Optimized for speed but requires more area.
        
    - **Low-Area ECDH Core (LA-ECDH)**: Smaller footprint but slower execution.  
        Both architectures use elliptic-curve cryptography (ECC) for encryption/decryption and a Physical Unclonable Function (PUF) to generate unique device-specific keys.
        
2. **Silicon Demonstration**:
    
    - Implemented in **65nm CMOS technology**, the ransomware logic occupies only **0.14 mm²** and increases the host System-on-Chip (SoC) area by **0.73%** and static power by **~2%**, making it stealthy.
        
    - Validated functionality through a custom PCB and FPGA setup, confirming encryption/decryption capabilities upon trigger activation.
        
3. **Threat Models**:
    
    - **Attacker A1**: Modifies a specific block during design.
        
    - **Attacker A2**: Integrates malicious logic at the system level.
        
    - **Attacker A3**: Inserts Trojan during fabrication using Engineering Change Order (ECO) techniques.
        
4. **Case Study**:
    
    - Inserted the ransomware into the **Common Evaluation Platform (CEP) SoC**, showing negligible impact on performance (0.36% power increase) and no timing violations.
        
5. **Comparison to Existing Threats**:
    
    - **Software Ransomware**: Relies on user actions (e.g., downloading malware) and flexible communication (e.g., pop-ups).
        
    - **Hardware Ransomware**: Requires pre-fabrication insertion, lacks user interaction channels, but is harder to detect and remove.
        

#### **Technical Components**:

- **PUF**: Generates a unique, device-specific key (e.g., SRAM or ring-oscillator PUF).
    
- **ECDH Unit**: Implements elliptic-curve Diffie-Hellman for key exchange and encryption.
    
- **Control Unit (FSM)**: Manages states (idle, keygen, encrypt, decrypt) and triggers the attack.
    

#### **Challenges and Limitations**:

- **Trigger Mechanism**: External triggers are impractical; internal triggers (e.g., counter-based) are preferred but complex.
    
- **Communication**: Hardware lacks direct user interaction; solutions involve writing ransom notes to storage or relying on companion malware.
    
- **PUF Stability**: Requires error correction to ensure consistent key generation.
    

#### **Detection and Prevention**:

- **Detection**: Difficult due to small area/power overheads masked by process variations. Side-channel analysis or physical inspection may help but is costly.
    
- **Prevention**: Techniques like BISA (Built-In Self-Authentication) can deter fabrication-time attacks but are not foolproof.
    

#### **Conclusion**:

The study demonstrates that hardware ransomware is **technically feasible**, with no fundamental barriers to its implementation. While challenges like user communication and trigger design remain, the attack poses a significant threat due to its stealth and persistence. The work aims to raise awareness and spur defenses against such hardware-level threats.

#### **Implications**:

- Highlights vulnerabilities in the global IC supply chain.
    
- Calls for stronger hardware security measures, including PUF-based authentication and design-time Trojan detection.
    
- Opens avenues for future research into hybrid hardware-software ransomware attacks.
    

This paper is the first to provide a **silicon-validated proof-of-concept** for hardware ransomware, bridging a critical gap between software malware and hardware Trojans.