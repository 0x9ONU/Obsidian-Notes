Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE

**DOI**: https://doi.org/10.1109/ICC.2015.7249281

**Authors**: Dusit Niyato; Ping Wang; Dong In Kim; Zhu Han; Lu Xiao

**Publication Year**: 2015

**Country of Study**: Singapore

**Tags**: #wsn #jamming #stochasticgame 

```ad-abstract
title: Abstract
collapse: open
In wireless powered networks, a user can make a request and use the wireless energy transferred from an energy source for its data transmission. However, due to broadcast nature of wireless energy transfer (e.g., RF energy), a malicious node (i.e., an attacker) can also intercept the energy and use it to perform an attack by jamming the data transmission of the user. We consider such a jamming attack where the user and attacker are aware of each other. We formulate a game theoretic model to analyze the energy request and data transmission policy of the user and the attack policy of the attacker when the user and the attacker both want to maximize their own rewards. We use an iterative algorithm designed based on the best response dynamics to obtain the solution defined in terms of the constrained Nash equilibrium. The numerical results show not only the convergence of the proposed algorithm, but also the optimal reward of the user under different energy cost constraints.
```

**Embed to Paper**: [[Game Theoretic Modeling of Jamming Attack in Wireless Powered Communication Networks.pdf]]
## Summary

The paper addresses the problem of **jamming attacks** in **wireless powered networks (WPNs)**, where a malicious node (attacker) intercepts wireless energy intended for a legitimate user and uses it to jam the user's data transmissions. The authors propose a **game-theoretic framework** to model the interactions between the user and the attacker, optimizing their strategies to maximize their respective rewards.

### System Model

Wireless Power Network (WPN)
- A legitimate user requests wireless energy (e.g., RF energy) from a source to power its data transmissions.
- The user has an energy storage with finite capacity and faces random channel states (due to fading) and traffic states (data generation rates).

### Attack: Jamming Attack

- The attacker also harvests energy from the same source when the user makes a request.
- Intercepts wireless energy broadcasts and uses it to preform **jamming attacks** on the user’s data transmissions.
- Both the user and attacker have energy storage and must manage their energy reserves strategically.
- The attacker's ability to jam depends on its energy level and channel state.

### Defense: Game Theory
- The interaction between the user and attacker is modeled as a **constrained stochastic game**.
- **User's Goal:** Maximize utility (successful data transmission) minus energy cost.
- **Attacker's Goal:** Maximize successful jamming.

