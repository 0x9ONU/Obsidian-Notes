Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE

**DOI**: https://doi.org/10.1109/ACCESS.2017.2768443

**Authors**: Van Nhan Vo; Tri Gia Nguyen; Chakchai So-In; Dac-Binh Ha

**Publication Year**: 2017

**Country of Study**: Vietnam

**Tags**: #energyharvesting #wsn #jamming #physicallayersecurity

```ad-abstract
title: Abstract
collapse: open
The broadcast nature of energy harvesting wireless sensor networks (EH-WSNs) allows sensor nodes (SNs) within the coverage range of a transmitter to capture its signals. However, an EH-WSN is vulnerable to eavesdropping and signal interception; therefore, security in the EH-WSNs is of significant interest, and this issue has been addressed over many years. However, no work has studied the existence of a friendly jammer to mitigate the security impact. Thus, this paper proposes a model and optimization scheme that uses a wirelessly powered friendly jammer to improve secrecy in EH-WSNs. The considered EH-WSN model includes multiple power stations, multiple SNs (sources) and their base station, a friendly jammer, and multiple passive eavesdroppers. We divide the model into two phases: 1) the power stations transfer RF energy to the source SNs and 2) the source SNs transmit information to their base station, while a friendly jammer generates jamming signals against multiple eavesdroppers. Using statistical characteristics of the signal-to-noise ratio, the closed-form expressions of the existence probability of the secrecy capacity and secrecy outage probability are derived. We also propose an optimal sensor scheduling scheme to enhance physical layer secrecy (i.e., best-node scheduling), and we demonstrate our method's superior performance compared with a conventional round-robin scheduling scheme. The analysis of the simulation results supports our hypothesis, which is in line with Monte Carlo simulations.
```

**Embed to Paper**: [[Secrecy Performance Analysis of Energy Harvesting Wireless Sensor Networks With a Friendly Jammer.pdf]]

## Summary

The paper addresses the vulnerability of **Energy Harvesting Wireless Sensor Networks (EH-WSNs)** to **eavesdropping attacks**. Due to the broadcast nature of wireless communications, passive eavesdroppers (ENs) can intercept signals transmitted between sensor nodes (SNs) and the base station (BS). The attack involves:
1. *Signal Interception/Eavesdropping*
2. *Explotation of No Encyrption*

### Defense
1. **Friendly Jammer:** A cooperative node that generates jamming signals to disrupt eavesdroppers' ability to decode intercepted signals. The jammer targets only the eavesdroppers, while the BS can cancel out the jamming signals due to prior synchronization.
2. **Best-Node Scheduling:** An optimization scheme where the SN with the highest channel gain to the BS is selected for transmission, improving secrecy performance compared to conventional round-robin scheduling.
3. **Energy Harvesting (EH):** SNs harvest RF energy from power stations (PSs) to power their transmissions, ensuring sustainability while maintaining security.