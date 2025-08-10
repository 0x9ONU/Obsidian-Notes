Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** Arxiv

**DOI**: https://doi.org/10.48550/arXiv.1601.05648

**Authors**: Qingzhi Liu, Kasım Sinan Yıldırım, Przemysław Pawełczak, Martijn Warnier

**Publication Year**: 2016

**Country of Study**: Netherlands

**Tags**: #energyharvesting 

```ad-abstract
title: Abstract
collapse: open
RF-based wireless power transfer networks (WPTNs) are deployed to transfer power to embedded devices over the air via RF waves. Up until now, a considerable amount of effort has been devoted by researchers to design WPTNs that maximize several objectives such as harvested power, energy outage and charging delay. However, inherent security and safety issues are generally overlooked and these need to be solved if WPTNs are to be become widespread. This article focuses on safety and security problems related WPTNs and highlight their cruciality in terms of efficient and dependable operation of RF-based WPTNs. We provide a overview of new research opportunities in this emerging domain.
```

**Embed to Paper**: [[Safe and Secure Wireless Power Transfer Networks.pdf]]

## Summary

The paper highlights the overlooked safety and security challenges in RF-based Wireless Power Transfer Networks (WPTNs) and proposes a roadmap for future research. It identifies vulnerabilities in WPTNs, demonstrates practical attacks, and suggests countermeasures.

### Attacks

1. **Safety Attacks**
	- Malicious nodes falsely report excessive RF exposure levels to trigger safety protocols, forcing either a reduction in power or a shut down.
2. **Charging Attacks**
	- Steal harvested energy with or without permission, which reduces efficiency and monopolizes resources.
3. **Interference Attacks**
	- Either creates destructive interference or blocks communication to disrupt charging or reduce harvested energy
4. **Spoofing**
	- Malicious nodes impersonate legitimate ERs to steal energy or trigger overexposure
5. **Application Attacks**
	- Malicious apps drain ER batteries or force excessive charging requests
6. **Monitoring Attacks**
	- Passive eavesdropping to infer sensitive information (e.g., human presence) via energy fluctuations.

### Defenses

1. **Safety Attacks**
	- Deploy dedicated sensor networks to independently measure RF exposure, eliminating reliance on ER feedback.
	- Develop better power density estimation techniques to detect false reports.
2. **Charging Attacks**
	- Implement fair scheduling algorithms and cross-check ER feedback with historical data.
	-  Use dynamic RF parameters (e.g., frequency/power adjustments) to favor legitimate ERs.
3. **Interference Attacks**
	- Periodically monitor for suspicious RF activity.
	- Use interference alignment techniques to minimize jamming impact.
4. **Spoofing**
	- Implement lightweight digital signatures for authentication (challenging for resource-constrained devices).
5. **Application Attacks**
	- Use trusted application signatures and energy-aware scheduling.
6. **Monitoring Attacks**
	- Detect unauthorized communication channels and enforce strict access control.

