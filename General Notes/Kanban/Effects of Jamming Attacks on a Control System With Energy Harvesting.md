Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE

**DOI**: https://doi.org/10.1109/LCSYS.2019.2919426

**Authors**: Steffi Knorn; André Teixeira

**Publication Year**: 2019

**Country of Study**: Sweden

**Tags**: #energyharvesting  #energyallocation #energyoptimization #cybersecurity #jamming 

```ad-abstract
title: Abstract
collapse: open
We consider the problem of control and remote state estimation with battery constraints and energy harvesting at the sensor (transmitter) under DoS/jamming attacks. We derive the optimal non-causal energy allocation policy that depends on current properties of the channel and on future energy usage. The performance of this policy is analyzed under jamming attacks on the wireless channel, in which the assumed and the true channel gains differ, and we show that the resulting control cost is not monotonic with respect to the assumed channel gain used in the transmission policy. Additionally, we show that, in case there exists a stabilizing policy, then the optimal causal policy ensures stability of the estimation process. The results were illustrated for non-causal and causal energy allocation policies under different jamming attacks.
```

**Embed to Paper**: [[Effects of Jamming Attacks on a Control.pdf]]

## Summary

The paper investigates the impact of **jamming attacks** on a wireless control system where sensors rely on **energy harvesting** to transmit state estimates to a controller. The authors analyze how these attacks degrade system performance and propose optimal energy allocation policies to mitigate their effects.

### Attack

**Jamming Attack**:
- The adversary disrupts the wireless channel by injecting interference (jamming signals), reducing the effective channel gain
- This decreases the **signal-to-interference-plus-noise ratio (SINR)**, increasing packet drop rates.
- The attack exploits the system’s dependency on wireless communication, aiming to deplete the sensor’s battery or destabilize control by causing frequent packet losses.

```ad-warning
title: Impact
- The difference between the assumed channel gain and the true gain leads to *suboptimal transmission energy allocation*, degrading estimation accuracy and control performance
- The contorl cost becomes *non-monotonic* with respect to the assumed channel gain, complicating attack analysis
```

### Defense

**Optimal Energy Allocation Policies**
1. Non-causal policy
2. Causal Policy
3. Stability policy
4. Greedy policy 

