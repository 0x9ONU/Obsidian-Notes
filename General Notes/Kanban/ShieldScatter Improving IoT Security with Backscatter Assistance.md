Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** Artix

**DOI**: https://doi.org/10.48550/arXiv.1810.07058

**Authors**: Zhiqing Luo, Wei Wang, Jun Qu, Tao Jiang, Qian Zhang

**Publication Year**: 2018

**Country of Study**: China

**Tags**: #wireless #backscatter #lightweight #cybersecurity 

```ad-abstract
title: Abstract
collapse: open
The lightweight protocols and low-power radio technologies open up many opportunities to facilitate Internet-of-Things (IoT) into our daily life, while their minimalist design also makes IoT devices vulnerable to many active attacks due to the lack of sophisticated security protocols. Recent advances advocate the use of an antenna array to extract fine-grained physical-layer signatures to mitigate these active attacks. However, it adds burdens in terms of energy consumption and hardware cost that IoT devices cannot afford. To overcome this predicament, we present ShieldScatter, a lightweight system that attaches battery-free backscatter tags to single-antenna devices to shield the system from active attacks. The key insight of ShieldScatter is to intentionally create multi-path propagation signatures with the careful deployment of backscatter tags. These signatures can be used to construct a sensitive profile to identify the location of the signals' arrival, and thus detect the threat. We prototype ShieldScatter with USRPs and ambient backscatter tags to evaluate our system in various environments. The experimental results show that even when the attacker is located only 15 cm away from the legitimate device, ShieldScatter with merely three backscatter tags can mitigate 97% of spoofing attack attempts while at the same time trigger false alarms on just 7% of legitimate traffic.
```

**Embed to Paper**: [[ShieldScatter Improving IoT Security with Backscatter Assistance.pdf]]
## Summary

### Attacks

1. **Spoofing Attacks**: An attacker impersonates a legitimate IoT device (e.g., a smart TV) to send fake commands (e.g., DoS commands or unauthorized data) to an Access Point (AP).
2. **Deauthentication Deadlock**: An attacker injects a deauthentication message during device pairing, disrupting the connection.
3. **Jamming and Replay Attacks**: The attacker jams the communication channel with one antenna while recording and replaying legitimate messages with another antenna to deceive the AP.

```ad-important
These attacks exploit the lack of sophisticated security protocols in lightweight IoT devices, which often rely on single-antenna systems and are vulnerable to impersonation and signal manipulation.
```

### Defense: ShieldScatter

ShieldScatter proposes a **lightweight, physical-layer security system** using **battery-free backscatter tags** to defend against active attacks. 

1. **Multi-Path Signature Creation**:
    - Backscatter tags are deployed around the AP or IoT device at half-wavelength intervals.
    - When a legitimate device communicates, the tags **reflect signals in a controlled sequence**, creating unique multi-path propagation signatures.
2. **Attack Detection**:
    - **Feature Extraction**: The system extracts features like signal amplitude, energy envelope, and variance from the reflected signals.
    - **Dynamic Time Warping (DTW)**: Compares features to detect misalignment caused by attackers (even if they are close to the legitimate device).
    - **One-Class SVM Classifier**: Trains a model to distinguish legitimate signals (similar multi-path signatures) from attacker signals (dissimilar signatures).
3. **Key Advantages**:
    - **No Antenna Array Needed**: Uses low-cost backscatter tags instead of expensive multi-antenna systems.
    - **Resilience to Proximity Attacks**: Detects attackers even when they are **15 cm away** from legitimate devices.
    - **Low False Alarms**: Achieves a 97% spoofing attack mitigation rate with only **3 tags**, while keeping false alarms at 7%.
4. **Robustness**:
    - Works in both **static and dynamic environments** (e.g., with people moving around).
    - Tolerates slight device movements (up to 30 cm without significant performance drop).

