#### **Introduction**

The paper provides a comprehensive review of hardware Trojan research over the past decade, highlighting the growing security concerns in the globalized semiconductor supply chain. Hardware Trojans are malicious modifications or inclusions in integrated circuits (ICs) that can cause undesired behavior, such as functional changes, information leakage, or performance degradation. Unlike manufacturing defects, Trojans are intentionally designed to be stealthy and can be inserted at any phase of the IC development process, making them a significant threat to critical applications and cyber infrastructure.

#### **Key Sections and Contributions**

1. **Vulnerability of the IC Supply Chain**
    
    - Modern IC development involves multiple untrusted third parties, including third-party IP (3PIP) vendors, foundries, and EDA tool providers, creating opportunities for Trojan insertion.
        
    - The complexity and cost of semiconductor fabrication have led to outsourcing, further exacerbating security risks like IP piracy, reverse engineering, and hardware Trojans.
        
2. **Hardware Trojan Threat**
    
    - A hardware Trojan consists of a **trigger** (monitors rare conditions) and a **payload** (executes malicious actions).
        
    - Trojans are classified based on insertion phase, abstraction level, activation mechanism, effects, and location.
        
    - Unlike defects, Trojans are stealthy and can evade conventional testing methods.
        
3. **Current State of the Art**
    
    - **Trojan Design**: Research focuses on novel triggers (e.g., exploiting don’t-care states) and payloads (e.g., side-channel leaks). Design optimization aims to minimize Trojan detectability.
        
    - **Countermeasures**:
        
        - **Detection**:
            
            - _Presilicon_: Functional validation, code/structural analysis, and formal verification.
                
            - _Postsilicon_: Destructive (reverse engineering) and nondestructive methods (functional tests, side-channel analysis). Side-channel techniques (e.g., power, delay, thermal measurements) are popular but require golden references for comparison.
                
        - **Design-for-Trust (DfT)**:
            
            - Facilitate detection (e.g., test-point insertion, scan-cell reordering).
                
            - Prevent insertion (e.g., logic obfuscation, camouflaging, functional filler cells).
                
            - Trustworthy computing (e.g., runtime monitoring, diverse 3PIP sourcing).
                
        - **Split Manufacturing**: Divides fabrication between trusted (BEOL) and untrusted (FEOL) foundries to obscure design intent.
            
4. **Comprehensive Attack Models**
    
    - Seven adversarial models (A–G) categorize threats based on untrusted entities in the supply chain (e.g., 3PIP vendors, foundries, EDA tools).
        
    - Most research targets Models A (untrusted 3PIP), B (untrusted foundry), and F (combined A+B). Models D (COTS components) and G (untrusted system integrator) are understudied.
        
5. **Publication Trends**
    
    - Research peaked around 2013, with a shift from Trojan design to countermeasures.
        
    - Detection methods dominate, but prevention (DfT, split manufacturing) is gaining traction due to the limitations of detection (e.g., reliance on golden models).
        
6. **Unsolved Problems**
    
    - **COTS Components**: Widely used in critical systems but lack authentication methods.
        
    - **Golden Model Dependency**: Most detection techniques require trusted references, which are often unavailable.
        
    - **3D ICs**: Emerging technology introduces new Trojan insertion points (e.g., TSVs) and requires adapted countermeasures.
        
7. **Research Roadmap**
    
    - **COTS Authentication**: Develop methods to verify untrusted components (e.g., reverse engineering, secure architectures).
        
    - **Vulnerability Analysis**: Metrics to assess design susceptibility to Trojans at RTL, system, and layout levels.
        
    - **Trojan-Resistant Design**: Techniques to eliminate or tolerate Trojan effects (e.g., avoiding triggers, obfuscation).
        
    - **Emerging Threats**: Address Trojans in 3D ICs and novel payloads (e.g., aging-based attacks).
        

#### **Conclusion**

The paper underscores the progress in hardware Trojan research while identifying critical gaps, such as COTS security and golden-model-free detection. It advocates for a shift toward prevention and resilience, emphasizing the need for collaborative efforts to address evolving threats in the semiconductor ecosystem. Future work should focus on practical, scalable solutions for real-world supply chain challenges.