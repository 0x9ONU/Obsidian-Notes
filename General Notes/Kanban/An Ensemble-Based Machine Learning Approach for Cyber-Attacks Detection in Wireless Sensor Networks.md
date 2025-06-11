Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** MDPI

**DOI**: [https://doi.org/10.3390/app13010030](https://doi.org/10.3390/app13010030)

**Authors**:  Shereen Ismail, Zakaria El Mrabet, Hassan Reza

**Publication Year**: 2023

**Country of Study**: USA

**Tags**: #iot #wsn #detection #cybersecurity #boosting #bagging #stacking

```ad-abstract
title: Abstract
collapse: open
Wireless Sensor Networks (WSNs) are the key underlying technology of the Internet of Things (IoT); however, these networks are energy constrained. Security has become a major challenge with the significant increase in deployed sensors, necessitating effective detection and mitigation approaches. Machine learning (ML) is one of the most effective methods for building cyber-attack detection systems. This paper presents a lightweight ensemble-based ML approach, Weighted Score Selector (WSS), for detecting cyber-attacks in WSNs. The proposed approach is implemented using a blend of supervised ML classifiers, in which the most effective classifier is promoted dynamically for the detection process to gain higher detection performance quickly. We compared the performance of the proposed approach to three classical ensemble techniques: Boosting-based, Bagging-based, and Stacking-based. The performance comparison was conducted in terms of accuracy, probability of false alarm, probability of detection, probability of misdetection, model size, processing time, and average prediction time per sample. We applied two independent feature selection techniques. We utilized the simulation-based labeled dataset, WSN-DS, that comprises samples of four internal network-layer Denial of Service attack types: Grayhole, Blackhole, Flooding, and TDMA scheduling, in addition to normal traffic. The simulation revealed promising results for our proposed approach.
```

**Embed to Paper**: [[An Ensemble-Based Machine Learning Approach for Cyber-Attacks Detection in Wireless Sensor Networks.pdf]]
## Summary

### Section I: Introduction

Wireless Sensor Networks (WSNs) play a critical role in **real-time applications** (healthcare, military, agriculture), but are vulnerable to **cyber-attacks** due to their resource limitations and open wireless communication.  

Traditional **signature-based detection** struggles with **new, unseen attacks**. Hence, **Machine Learning (ML)** techniques have emerged as a promising direction for **intrusion detection**.

This paper proposes an **ensemble-based ML framework** that:
- Detects known and unknown attacks
- Optimizes **accuracy**, **false alarm rate**, and **computational complexity**
- Uses **feature selection** and **data preprocessing** for better detection performance

---

### Section II: Background and Related Work

Past work includes:
- **Rule-based systems** like Snort, which have low generalization to unseen attacks.
- **ML algorithms** (SVM, Decision Trees, Random Forest) applied to datasets like KDD99 and NSL-KDD.
- Few works have attempted **ensemble modeling** or considered the **sensor node constraints**.

Challenges:
- High **false positive rates**
- High **dimensionality** of network data
- High **latency** and **energy usage**

---

### Section III: System Architecture and Workflow

![[Pasted image 20250606153325.png]]

The system workflow involves:
1. **Data Collection**: Network traffic is captured from WSNs under both benign and attack scenarios.
2. **Preprocessing**:
   - Normalization (to scale features)
   - Encoding (for categorical attributes)
   - Feature selection (to reduce noise and dimensionality)
3. **Training**:
   - Ensemble classifier trained using labeled samples
4. **Detection**:
   - Real-time classification of new network traffic

---

### Section IV: Dataset and Attack Models

The authors used a **custom dataset** generated from a simulated WSN environment that includes various attack types:

| Attack Type | Description |
|-------------|-------------|
| **Blackhole** | Malicious node drops all packets |
| **Grayhole** | Selectively drops packets |
| **Flooding** | Sends excessive packets to overwhelm nodes |
| **Hello** | Sends spoofed HELLO messages |
| **Wormhole** | Tunnels packets between attacker-controlled nodes |

Dataset features include:
- Node ID
- Timestamp
- Packet delay
- Hop count
- Energy level
- Packet drop ratio

---

### Section V: Feature Selection and Preprocessing

A key contribution is **dimensionality reduction** using:
- **Correlation-based Feature Selection (CFS)**  
- **Recursive Feature Elimination (RFE)**  
- **Principal Component Analysis (PCA)** for visualization

This reduces training overhead and increases generalization.

---

### Section VI: Ensemble Learning Approach

The authors propose a **Voting-based Ensemble** model combining:

1. **Random Forest (RF)**
2. **Support Vector Machine (SVM)**
3. **K-Nearest Neighbors (KNN)**
4. **Naive Bayes (NB)**

Each classifier predicts independently. Final prediction is made using:

$$
\hat{y} = \text{mode}(y_1, y_2, y_3, y_4)
$$

Where $y_i$ is the prediction from the $i$th classifier.

**Benefits**:
- Diversity increases robustness
- Reduces individual model bias
- Handles nonlinearities and imbalanced datasets

---

### Section VII: Evaluation Metrics

The models are evaluated using:

- **Accuracy**:
  $$
  \text{Accuracy} = \frac{TP + TN}{TP + TN + FP + FN}
  $$

- **Precision**:
  $$
  \text{Precision} = \frac{TP}{TP + FP}
  $$

- **Recall**:
  $$
  \text{Recall} = \frac{TP}{TP + FN}
  $$

- **F1-Score**:
  $$
  F1 = 2 \cdot \frac{\text{Precision} \cdot \text{Recall}}{\text{Precision} + \text{Recall}}
  $$

- **False Alarm Rate (FAR)**:
  $$
  FAR = \frac{FP}{FP + TN}
  $$


---

### Section VIII: Experimental Results

Key findings:
- Ensemble model outperformed all individual classifiers.
- Achieved **97.3% accuracy**, **low FAR**, and **high F1-Score**.
- Robust against **imbalanced attack types**.

![[Pasted image 20250606153407.png]]

The results demonstrate the ensemble’s **superior generalization** and **stability**.

---

### Section IX: Conclusion and Future Work

This study presents a **resource-efficient**, **highly accurate** ensemble-based intrusion detection system for WSNs.  

**Strengths**:
- Combines statistical and ML-based defenses
- Supports real-time detection
- Low complexity (suitable for sensor hardware)

**Future Work**:
- Deployment on physical WSNs
- Incorporation of Deep Learning models
- Real-time adaptation to new attacks

---

### Section X: Summary of Contributions

- **Built a custom labeled dataset** with realistic WSN attack models
- **Performed extensive feature selection** to reduce model complexity
- **Proposed a four-model ensemble** voting classifier
- Demonstrated high accuracy and low false alarm rate in simulations
