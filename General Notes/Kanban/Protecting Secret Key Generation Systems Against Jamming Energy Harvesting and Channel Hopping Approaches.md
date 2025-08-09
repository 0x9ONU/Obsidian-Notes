Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE

**DOI**: https://doi.org/10.1109/TIFS.2017.2713342

**Authors**: E. Veronica Belmega; Arsenia Chorti

**Publication Year**: 2017

**Country of Study**: France & UK

**Tags**: #secretkey #jamming #energyharvesting #channelhopping #zero-sum-game

```ad-abstract
title: Abstract
collapse: open
Jamming attacks represent a critical vulnerability for wireless secret key generation (SKG) systems. In this paper, two counter-jamming approaches are investigated for SKG systems: first, the employment of energy harvesting (EH) at the legitimate nodes to turn part of the jamming power into useful communication power, and, second, the use of channel hopping or power spreading in block fading channels to reduce the impact of jamming. In both cases, the adversarial interaction between the pair of legitimate nodes and the jammer is formulated as a two-player zero-sum game and the Nash and Stackelberg equilibria are characterized analytically and in closed form. In particular, in the case of EH receivers, the existence of a critical transmission power for the legitimate nodes allows the full characterization of the game's equilibria and also enables the complete neutralization of the jammer. In the case of channel hopping versus power spreading techniques, it is shown that the jammer's optimal strategy is always power spreading while the legitimate nodes should only use power spreading in the high signal-to-interference ratio (SIR) regime. In the low SIR regime, when avoiding the jammer's interference becomes critical, channel hopping is optimal for the legitimate nodes. Numerical results demonstrate the efficiency of both counter-jamming measures.
```

**Embed to Paper**: [[Protecting Secret Key Generation Systems Against Jamming.pdf]]

## Summary

The paper addresses the vulnerability of wireless secret key generation (SKG) systems to jamming attacks and proposes two countermeasures:
1. **Energy Harvesting (EH)** at legitimate nodes to convert jamming power into useful communication power.
2. **Channel Hopping or Power Spreading** in block fading channels to mitigate jamming impact.

The adversarial interaction between legitimate nodes and the jammer is modeled as a two-player zero-sum game, with Nash (NE) and Stackelberg (SE) equilibria analyzed.

### Attack

**Jamming Attack**:
- A malicious jammer (Eve) transmits interference signals to disrupt the SKG process between legitimate nodes (Alice and Bob).
- The jammer aims to minimize the SKG capacity by injecting noise into the channel during the advantage distillation phase.
- The attack is modeled with power constraints, where the jammer can choose to transmit with full power ($\gamma \le \Gamma$) or remain silent.

### Defense

#### Energy Harvesting Approach

Legitimate nodes harvest energy from the jamming signals during a fraction of time ($\tau T$) and use it to enhance communication in the remaining time ($(1- \tau)T$).


#### Channel Hopping

Legit nodes randomly select a single sub carrier to transmit on, avoiding jamming interference.