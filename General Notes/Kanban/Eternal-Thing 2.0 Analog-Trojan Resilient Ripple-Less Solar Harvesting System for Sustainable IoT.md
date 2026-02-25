Date: 18th February 2026
Date Modified: 18th February 2026
File Folder: Kanban
## Publication Information

**Database:** ACM

**DOI**: https://doi.org/10.1145/3575800

**Authors**: Saswat Kumar Ram, Sauvagya Ranjan Sahoo, Banee Bandana Das, Kamalakanta Mahapatra, Saraju P. Mohanty

**Publication Year**: 2023

**Country of Study**: India

**Tags**: #wsn #energyharvesting #cybersecurity #trojan #hardwareSecurity #iot

```ad-abstract
title: Abstract
collapse: open
Recently, harvesting natural energy is gaining more attention than other conventional approaches for sustainable IoT. System on chip power requirement for the internet of things (IoT) and generating higher voltages on chip is a massive challenge for on-chip peripherals and systems. In this article, an on-chip reliable energy-harvesting system (EHS) is designed for IoT with an inductor-free methodology. The control section monitors the computational load and the recharging of the battery/super-capacitor. An efficient maximum power point tracking algorithm is also used to avoid quiescent power consumption. The reliability of the proposed EHS is improved by using an aging tolerant ring oscillator. The effect of Trojan on the performance of energy-harvesting system is analyzed, and proper detection and mitigation mechanism is proposed. Finally, the proposed ripple mitigation techniques further improves the performance of the aging sensor. The proposed EHS is designed and simulated in CMOS 90-nm technology. The output voltage is in the range of 3–3.55 V with an input 1–1.5 V with a power throughput of 0–22 μW. The EHS consumes power under the ultra-low-power requirements of IoT smart nodes.
```

**Embed to Paper**: [[Eternal-Thing 2.0 Analog-Trojan Resilient Ripple-Less Solar Harvesting System for Sustainable IoT]]

## Summary

### Introduction

With new SoCs being using in energy-harvesting WSNs, there is a chance that hardware Trojans are being added to the devices to try and interrupt networks or steal data. The paper brings up the possible problems that this causes for WSNs and a new protocol called the **reliable secure solar energy-harvesting system (RSSEHS)** to try and counteract them.

### Attack Vectors

- Trojans can cause energy ripples by messing with when capacitor and inductors charge/discharge their voltage or current.
- This can lead to energy either being wasted or the clock being skewed on the device, causing hardware failure due to heat or clock drift.

### Novel Contributions

- **Capacitor value modulation (CVM)** to digitally offset any ripples caused by hardware Trojans
- Design of a novel ultra-low-power self-sustainable reliable solar energy-harvesting system (PV-EHS).
- A novel aging tolerant mechanism is implemented to improve the reliability of EHS.
- A novel methodology to mitigate the effect of Trojan caused by increasing temperature of RO intentionally and A2 Trojan detection with mitigation technique for EHS.
- Improvement in Performance of Aging Sensor for Recycled EHS-IC Detection.

### Proposed Solution

![[Pasted image 20260225132701.png]]

![[Pasted image 20260225132707.png]]

![[Pasted image 20260225132719.png]]

![[Pasted image 20260225132743.png]]

![[Pasted image 20260225132735.png]]

![[Pasted image 20260225132752.png]]

### Simulation Results

![[Pasted image 20260225132819.png]]

![[Pasted image 20260225132823.png]]

![[Pasted image 20260225132828.png]]

![[Pasted image 20260225132838.png]]

![[Pasted image 20260225132842.png]]

![[Pasted image 20260225132848.png]]

