Date: 9th May 2025
Date Modified: 9th May 2025
File Folder: Kanban
## Publication Information

**Database:** ACM

**DOI**: https://dl.acm.org/doi/pdf/10.1145/3561515

**Authors**: ALEXANDRE PROULX, JEAN-YVES CHOUINARD, PAUL FORTIER, and AMINE MILED

**Publication Year**: 2023

**Country of Study**: Canada

**Tags**: #cybersecurity #hardwareSecurity #embedded #hwsw

```ad-abstract
title: Abstract
collapse: open
This article presents a critical literature review on the security aspects of field-programmable gate array (FPGA) devices. FPGA devices present unique challenges to cybersecurity through their reconfigurable nature. The article also pays special attention to emerging system-on-chip (SoC) FPGA devices that incorporate a hard processing system (HPS) on the same die as the FPGA logic. While this incorporation reduces the need for vulnerable external signals, the HPS in SoC FPGA devices adds a level of complexity that is not present for stand-alone FPGA devices. This added complexity necessarily hands over the task of securing the device to developers. Even with standard security features in place, the HPS might still have unhindered access to the FPGA logic. A single software flaw could open up a breach that might allow an attacker to extract the FPGA’s configuration data. A robust cybersecurity strategy is thus required for developers. As such, this work aims to provide the groundwork to build a solid threat-based cybersecurity design strategy that is specially adapted to SoC FPGA devices.
```

**Embed to Paper**: ![[A Survey on FPGA Cybersecurity Design Strategies.pdf]]

## Summary

### **1. Introduction**

- FPGA devices, particularly **SRAM-based FPGAs**, dominate the market (AMD-Xilinx and Intel hold ~87% market share).
    
- SRAM FPGAs require external non-volatile memory to store their bitstream, making them **vulnerable to extraction**.
    
- SoC FPGAs integrate a **hard processing system (HPS)** on the same die, reducing external attack surfaces but increasing complexity and attack vectors internally.
    
- The paper introduces the **IDDIL/ATC methodology** (Figure 2) to assess and secure FPGAs by:
    
    - Identifying assets
        
    - Defining attack surfaces
        
    - Discovering and analyzing threats
        
    - Implementing appropriate controls
        

---

### **2. Related Works and Contributions**

- Reviews 17 prior studies, summarized in **Table 1**, covering:
    
    - Side-channel attacks (SCAs)
        
    - Fault injection (FI)
        
    - Reverse engineering
        
    - Cloud FPGA security
        
    - Trojan insertion
        
- Contributions of this paper include:
    
    - A **threat model** specific to SoC FPGA devices
        
    - Qualitative ranking of attack vectors by attack potential
        
    - Categorization using **STRIDE-LM** threat framework
        

---

### **3. Generic Attack Surface and Its Assets**

#### Assets

- Primary targets: **Bitstream**, decryption keys, firmware, OS images, bootloaders.
    

#### Attack Surface

- **Figure 3** shows the **component layout** of AMD-Xilinx Zynq-7000 and Intel Stratix 10 SoC FPGAs.
    
    - Zynq boot handled by HPS; Stratix uses a dedicated secure device manager (SDM).
        
- **Figure 4** details the **data flow** from development to OS execution.
    
    - Secure boot with AES-256 (Zynq uses CBC, Stratix uses CTR)
        
    - Authentication with RSA or ECDSA
        
    - eFuses/BBRAM for key storage and JTAG disabling
        

---

### **4. Identifying and Assessing Threats**

#### Attack Potential Methodology (Table 2)

Factors include:

- Time
    
- Expertise
    
- TOE knowledge
    
- Access
    
- Required equipment
    

#### Vulnerability Examples (Table 3)

- Lists 5 CVEs (2020–2022) for Stratix 10 and Zynq-7000, all with **medium (6.8)** CVSS scores
    

---

### **5. Literature Review of FPGA Attack Vectors**

#### 5.1 Bitstream Reverse Engineering

- Tools: Vivado, Quartus, Libero, Lattice Diamond
    
- Notable efforts:
    
    - **Note & Rannaud** reverse-engineered AMD bitstreams using XDL
        
    - **Project X-Ray** (F4PGA) mapped AMD-Xilinx 7-series
        
    - Lattice & Microsemi: IceStorm, Project Trellis
        
    - Deep learning used to identify functional blocks from bitstreams
        

#### 5.2 Side-Channel Attacks (SCAs)

- **Targets**: AES keys, neural networks, TRNGs, PUFs
    
- Techniques: power analysis, EM analysis, photonic, timing
    
- EM-based SCAs were effective on Xilinx 5, 6, 7-series
    
- Cloud FPGA SCAs exploit shared resources
    
- **AI-enhanced SCAs** require fewer traces (e.g., <500 for AES)
    

#### 5.3 Fault Injection (FI) Attacks

- Methods: Voltage, clock glitches, EM pulses, optical/laser
    
- **Table 4** compares each by:
    
    - Invasiveness
        
    - Timing/positional control
        
- Cloud FPGA FIs demonstrated via **FPGAhammer**
    
- FIs also attack PUFs, TRNGs, and neural nets
    

#### 5.4 Probing Attacks

- **Electrical**: invasive, uses focused ion beam, rarely used on FPGAs
    
- **Optical**: Tajik et al. used flip-chip access to read decrypted bitstreams from Xilinx Kintex-7
    
- Lohrke et al. extracted 256-bit AES keys from BBRAM
    

#### 5.5 Hardware Trojans

- Trojan insertion possible during EDA stages
    
- Trojans can subvert **TrustZone**, weaken crypto, or leak data
    
- Tools like ncd2xdl used for Trojan analysis
    

#### 5.6 Covert Channels

- **Thermal**: ROs used to transfer bits via temperature shifts
    
- **Voltage**: FPGAHammer and modulated covert channels transfer secrets at Mbps speeds
    

#### 5.7 SoC-Specific Logical Attacks

- Buffer overflow (CVE-2021-27208, -44850) enables arbitrary code execution
    
- Auto-decryption oracle can expose plaintext bitstreams
    
- Secure boot can be bypassed via malicious kernel injection
    

#### 5.8 Attack Vector Comparison

- **Tables 5 & 6** rank attack classes by attack potential
    
- Highest scores: Probing (32), SCA (29), Reverse engineering (26–27)
    

---

### **6. Applying Controls**

#### STRIDE-LM Threat Categorization (Table 7)

Maps threat types to:

- Authentication (Spoofing)
    
- Encryption (Information disclosure)
    
- Redundancy (DoS)
    
- Isolation (Privilege elevation)
    
- Segmentation (Lateral movement)
    

#### 6.1 Manufacturer-Provided Controls

- AES bitstream encryption (Xilinx/Intel)
    
- Authentication (HMAC, RSA, ECDSA)
    
- eFuse to disable JTAG and readback
    

#### 6.2 Controls from Literature

- Logic obfuscation
    
- Bitstream watermarking
    
- Runtime monitors
    
- Encrypted communication with PUF-based authentication
    
- Hardware isolation for multi-tenant FPGAs
    

---

### **7. Future Research and Development**

- Enhanced isolation methods for **multi-tenant cloud FPGAs**
    
- Robust defenses for AI-based FPGA implementations
    
- Better detection/prevention of **optical and Trojan attacks**
    
- Standardized **open-source** verification tools for FPGA designs

### Figures of Interest

| **Figure** | **Content**                                                      |
| ---------- | ---------------------------------------------------------------- |
| Fig. 1     | Comparison of SRAM vs. Flash-based FPGA                          |
| Fig. 2     | IDDIL/ATC cybersecurity strategy flow                            |
| Fig. 3     | Device layouts: Zynq-7000 vs. Stratix 10                         |
| Fig. 4     | Secure boot lifecycle and data flows                             |
| Tables 2–7 | Metrics, vulnerabilities, attack potentials, and countermeasures |
