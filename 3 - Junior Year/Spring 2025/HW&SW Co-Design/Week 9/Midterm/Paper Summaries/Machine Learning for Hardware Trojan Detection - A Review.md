
#### **Introduction**

The paper reviews **Machine Learning (ML)-based techniques** for detecting **Hardware Trojans (HTs)** in integrated circuits (ICs). HTs are malicious modifications inserted during IC design or fabrication, posing risks like data leakage or system failure. Due to the complexity of modern IC supply chains—where outsourcing to untrusted foundries is common—HT detection is critical. The authors categorize ML approaches into five domains:

1. **Reverse engineering (RE) enhancement**
    
2. **Real-time detection**
    
3. **Golden model-free methods**
    
4. **Gate-level netlist analysis**
    
5. **Classification frameworks**
    

---

### **Key Sections**

#### **1. Machine Learning Overview**

- **Supervised vs. Unsupervised Learning**:
    
    - _Supervised_: Uses labeled data (e.g., SVM, Neural Networks).
        
    - _Unsupervised_: Discovers patterns in unlabeled data (e.g., clustering).
        
- **Common ML Models**:
    
    - **SVM**: Dominates HT detection due to robustness in high-dimensional spaces.
        
    - **Neural Networks (NNs)**: Effective for complex pattern recognition (e.g., CNNs for image-based RE).
        
    - **Ensemble Learning (EL)**: Combines models (e.g., Random Forests) to improve accuracy.
        

#### **2. ML for HT Detection: Five Categories**

1. **Reverse Engineering Improvement**
    
    - **Goal**: Accelerate RE (decapsulation, imaging) to identify HTs.
        
    - **Methods**:
        
        - **Nasr et al.**: Classifies HT types (Insertion/Deletion/Parametric) using SVM but struggles with noise.
            
        - **Bao et al.**: Uses ML on RE images to skip schematic creation, enabling golden model-free detection.
            
2. **Real-Time Detection**
    
    - **Focus**: Detect HTs in Network-on-Chip (NoC) architectures during operation.
        
    - **Example**: Kulkarni et al.’s SVM-based method detects router packet tampering with low overhead.
        
3. **Golden Model-Free Approaches**
    
    - **Challenge**: Eliminate reliance on trusted "golden" chips.
        
    - **Solutions**:
        
        - **Salmani et al.**: Uses controllability/observability metrics in netlists.
            
        - **Lodhi et al.**: Leverages power profiles of microcontroller instructions with instance-based ML.
            
4. **Gate-Level Netlist Analysis**
    
    - **Approach**: Analyze netlist features (e.g., node connectivity) to flag anomalies.
        
    - **Hasegawa et al.**: Extracts "Trojan features" (e.g., boundary net structures) for SVM classification.
        
5. **Classification Approaches**
    
    - **Diversity**: Methods range from power analysis (frequency-domain features) to side-channel leakage.
        
    - **Example**: Liu et al.’s wireless IC Trojan detector uses statistical transmission power analysis.
        

#### **3. Key Findings**

- **Dominant ML Models**: SVM (60% of studies), followed by Ensemble Learning and Neural Networks.
    
- **Features**: Side-channel signals (power, delay) and netlist attributes are most common.
    
- **Benchmarks**: ISCAS’89 and Trust-Hub are widely used; custom benchmarks address NoC-specific HTs.
    
- **Gaps**:
    
    - No holistic pre-silicon/post-silicon combined approach.
        
    - Sensitivity to noise (e.g., RE-based methods).
        
    - Limited DL adoption despite its potential.
        

---

### **Conclusion & Future Directions**

- **ML’s Role**: Emerging as a scalable solution for HT detection, especially for stealthy Trojans.
    
- **Recommendations**:
    
    - Combine multiple features (e.g., netlist + side-channel) for higher accuracy.
        
    - Develop unified benchmarks and noise-resistant models.
        
    - Explore **Deep Learning** for complex HT patterns (e.g., analog/RF Trojans).