
#### **1. Introduction**

The paper presents a **real-world case study** of hardware Trojan design and implementation, based on the winning entry of the 2008 **Computer Security Awareness Week (CSAW) Embedded Systems Challenge**. The scenario involved a cryptographic device ("Alpha") where teams were tasked with inserting stealthy hardware Trojans into the HDL source code. The goal was to compromise the device's functionality or leak sensitive data (e.g., encryption keys) while evading detection during functional tests, power analysis, and code inspection.

#### **2. Background and Motivation**

- **IC Supply Chain Vulnerabilities**:
    
    - Modern ICs rely on globalized design and fabrication, introducing risks like **third-party IP tampering**, **untrusted CAD tools**, and **malicious foundries**.
        
    - Attacks can target **trust** (e.g., Trojans), **metering** (unauthorized IC production), or **theft** (IP piracy).
        
- **Hardware Trojans**: Malicious modifications to circuitry that evade detection but activate under rare conditions.
    

#### **3. Attacker Taxonomy**

The paper classifies attackers by their position in the supply chain (Fig. 2):

1. **Design Attacker**: Inserts Trojans at the HDL level (e.g., via compromised source code).
    
2. **Synthesis Attacker**: Manipulates CAD tools to embed Trojans during synthesis.
    
3. **Fabrication Attacker**: Alters masks or layout geometry in foundries.
    
4. **Distribution Attacker**: Reverse-engineers or tampers with packaged ICs.
    

#### **4. Implemented Trojan Attacks**

The team designed **eight stealthy Trojans** for the Alpha device, categorized by attack type:

##### **A. Information Leakage**

1. **RS232 End Sequence Exploit**:
    
    - **Method**: Appended encryption keys to the end of RS232 transmissions, invisible to the legitimate receiver.
        
    - **Proximity**: Requires access to the communication channel.
        
2. **RS232 Baud Rate Exploit**:
    
    - **Method**: Overlaid a second transmission at 115200 baud on the 9600 baud signal to leak keys.
        
    - **Stealth**: Indistinguishable at the original baud rate.
        
3. **Thermal Leakage**:
    
    - **Method**: Encoded key bits in FPGA temperature fluctuations (heated = '1', normal = '0').
        
    - **Proximity**: Requires physical access to measure temperature.
        
4. **AM/50 MHz RF Transmission**:
    
    - **Method**: Modulated FPGA pins to transmit keys via radio signals (audible with AM radio or HAM receiver).
        
    - **Range**: Up to 50 feet with antenna enhancement.
        
5. **LED Blinking**:
    
    - **Method**: Encoded keys in high-frequency LED blinks (invisible to the naked eye).
        

##### **B. Denial of Service (DoS)**

6. **AES Key Corruption**:
    
    - **Trigger**: Timer-based (every ~3.5 minutes).
        
    - **Payload**: XORed a key bit to corrupt ciphertext, rendering decryption impossible.
        
    - **Stealth**: Functional tests passed, as attacks were intermittent.
        

##### **C. Considered but Unimplemented Attacks**

- **Keyboard LED/Cursor Blinking**: Leak data via subtle LED/cursor patterns.
    
- **VGA Sync Exploit**: Hide data in VGA signal gaps.
    
- **EPROM Tampering**: Brick the device by erasing FPGA configuration.
    
- **Self-Destruction**: Overheat or damage the FPGA (deemed infeasible).
    

#### **5. Key Insights**

- **Stealth Techniques**:
    
    - **Code Obfuscation**: Misleading comments, decentralized logic, and bus-width manipulation.
        
    - **Minimal Footprint**: Trojans reused existing circuitry to avoid power/area anomalies.
        
- **Trigger Mechanisms**:
    
    - Timers, rare input sequences, or environmental conditions (e.g., temperature).
        
- **Detection Evasion**:
    
    - Trojans avoided functional disruption during testing and minimized side-channel signatures.
        

#### **6. Results**

- **Judging Criteria**: Power consumption, bitstream size, stealth, and novelty.
    
- **Outcome**: The team won **1st place** by demonstrating Trojans with:
    
    - **Negligible power deviation** (e.g., +0.4 mA for RS232 exploits).
        
    - **No bitstream size changes**.
        
    - **Undetectable** during code inspection and functional tests.
        

#### **7. Conclusion**

- The study highlights **real-world feasibility** of hardware Trojans in critical systems.
    
- **Mitigation Requires**:
    
    - Rigorous code reviews.
        
    - Side-channel monitoring (e.g., power, thermal, RF).
        
    - Obfuscation and tamper-proof design practices.
        

**Key Contributions**:

- Practical demonstration of **diverse Trojan triggers/payloads**.
    
- Emphasis on **stealth** and **evasion techniques**.
    
- Framework for **assessing supply chain risks**.
    

This work underscores the need for **multi-layered hardware security** in an era of globalized IC production.