Date: 14th April 2025
Date Modified: 14th April 2025
File Folder: Week 9
#hwsw

```ad-abstract
title: Information
collapse: open

**Name**: Ethan Berei
**Due**: April 16th, 2025

```

# VLSI: Clock Skew and Noise Margins under VDD Scaling

## Clock Skew

### Introduction

**Clock skew** is the maximum difference among clock paths, which can have a negative performance impact on synchronous sequential circuits on integrated circuits (ICs) and system-on-chips (SoCs). This skew can lead to incorrect data latching for registers, timing violations, and general system instability as a chip runs for a long time [1]. In the past decade, the electronic device market has shifted rapidly towards solutions that require low-power components with scalable technologies. Therefore, large clock distribution networks (CDNs) have to become standard across devices. Due to these changes, the clock signal has been degregated as it moves across the processor, causing clock skew [2]. It has been further hurt as modern clock distributions have chosen to use only a single wire, which makes the skewed clock phase propagate globally [1]. Most importantly, the power consumption problem faced by high-performance microprocessors has also heavily affected clock skew. The most common solution to this problem is *dynamic voltage and frequency scaling (DVFS)*, which allows a chip to reduce it’s $V_{DD}$ and frequency when it is under light loads. However, this has led to narrow frequency bands and a higher clock skew as $V_{DD}$ approaches $GND$ [3]. Considering the problem of clock skew, five research articles discussing their methodologies with their proposed solutions and mitigation techniques will be discussed and compared to determine the best course of action for reducing clock skew in $V_{DD}$-scaled solutions.
### Case Studies

#### Study #1: “NBTI-aware Skew Minimization Techniques [1]”

When it comes to clock skew, multiple different issues with manufacturing and chip degradation can hurt it’s performance especially when using DVFS. Specifically, the first paper identifies that clock skew can be caused by *negative bias temperature instability (NBTI)* and silicon differences in a chip. NBTI is the phenomenon that is tied directly to a chips age and usage. As a PMOS ages, it’s threshold voltage $V_{th}$ increases. NBTI causes high clock buffer delays and introduces clock skew due to the age of the chip. Combined with variability in fabrication can cause mismatches in $V_{th}$ across the board, current CMOS technology unpredictably skews due to physical problems. DVFS can also lead to problems as it might not recognize that $V_{th}$ has grown too high, which can lead to some transistors being underpowered and not even being able to carry a clock signal anymore. The authors also found concerns with traditional single-phase clock distribution. They found that race conditions and timing constraints can be found on single-phase clocks, which can also negatively affect skew margins. To solve these three main considerations, the authors proposed three solutions: a two-phase non-overlapping clock, a pipelining technique, and a NBTI-aware buffer replacement algorithm.

In the first solution, the author tries to solve the skew margin issue by using two-phase lines for clocks rather than a single line. These two phases ($\Phi_1$ and $\Phi_2$) are generated from a single global clock and sent to the chips in a way that their phases never overlap. These non-overlapping edges remove the odds of race conditions from happening, improve skew margins to 25%, and are compatible with low-power operation latches such that DVFS is possible. Figure 1 below shows the timing diagram of these two phases:

![[Pasted image 20250420174601.png | center ]]
<center><b> Figure 1</b>: Non-Overlapping Two-Phase Wave [1] </center>

The second approach focuses on a pipeline approach to reduce the complexity of the system. For context, a pipeline it divides complex function blocks into smaller blocks and inserts registers between each of the blocks to reduce the complexity of a synchronous system. 

#### Study #2: “Low-Power Clock Distribution Using a Current-Pulsed Clocked Flip-Flop [2]”

#### Study #3: ““Power and Skew Reduction Using Resonant Energy Recycling in 14-nm FinFET Clocks [3]”

#### Study #4: “A Reinforced Learning Solution for Clock Skew Engineering to Reduce Peak Current and IR Drop [4]”

#### Study #5: “CSAM - A Clock Skew-Aware Aging Mitigation Technique [5]”

### Solution & Mitigation Technique Comparison

## Noise Margins

### Introduction

### Case Studies

### Solutions & Mitigation Techniques

## Conclusion

## Resources

[1] R. Rakesh, “[[NBTI-aware Skew Minimization Techniques]],” _International Journal of Electronics Engineering_, vol. 7, no. 1, pp. 37–46, 2015.
[2] R. Islam and M. R. Guthaus, “[[Low-Power Clock Distribution Using a Current-Pulsed Clocked Flip-Flop]],” _IEEE Transactions on Circuits and Systems I: Regular Papers_, vol. 62, no. 4, pp. 1156–1164, Apr. 2015. doi:10.1109/tcsi.2015.2402938
[3] D. Challagundla, M. Galib, I. Bezzam, and R. Islam, “[[Power and Skew Reduction Using Resonant Energy Recycling in 14-nm FinFET Clocks]],” _2022 IEEE International Symposium on Circuits and Systems (ISCAS)_, pp. 268–272, May 2022. doi:10.1109/iscas48785.2022.9937771
[4] S. A. Beheshti-Shirazi _et al._, “[[A Reinforced Learning Solution for Clock Skew Engineering to Reduce Peak Current and IR Drop]],” _Proceedings of the 2021 Great Lakes Symposium on VLSI_, pp. 181–187, Jun. 2021. doi:10.1145/3453688.3461754
[5] B. Eghbalkhah, M. Kamal, A. Afzali-Kusha, M. B. Ghaznavi-Ghoushchi, and M. Pedram, “[[CSAM - A Clock Skew-Aware Aging Mitigation Technique]],” _Microelectronics Reliability_, vol. 55, no. 1, pp. 282–290, Jan. 2015. doi:10.1016/j.microrel.2014.09.033




[a] C. A. Dos Reis, “[[Review of Offset and Noise Reduction Techniques for CMOS Amplifiers]],” _Journal of Integrated Circuits and Systems_, vol. 17, no. 1, pp. 1–9, Apr. 2022. doi:10.29292/jics.v17i1.572
[b] A. Beg, “[[Automating the Sizing of Transistors in CMOS Gates for Low-Power and High-Noise Margin Operation]],” _International Journal of Circuit Theory and Applications_, vol. 43, no. 11, pp. 1637–1654, Oct. 2014. doi:10.1002/cta.2031
[c] M. Devi, C. Madhu, and N. Garg, “[[Design and Analysis of CMOS-Based 6T SRAM Cell at Different Technology Nodes]],” _Materials Today: Proceedings_, vol. 28, pp. 1695–1700, 2020. doi:10.1016/j.matpr.2020.05.130
[d] S. Saun and H. Kumar, “[[Design and Performance Analysis of 6T SRAM Cell on Different CMOS Technologies with Stability Characterization]],” _IOP Conference Series: Materials Science and Engineering_, vol. 561, no. 1, p. 012093, Oct. 2019. doi:10.1088/1757-899x/561/1/012093
[e] S. R. Raman, F. Wen, R. Pillarisetty, V. De, and J. P. Kulkarni, “[[High Noise Margin, Digital Logic Design using Josephson Junction Field-Effect Transistors for Cryogenic Computing]],” _IEEE Transactions on Applied Superconductivity_, vol. 31, no. 5, pp. 1–5, Aug. 2021. doi:10.1109/tasc.2021.3054347
[f] N. Zheng and P. Mazumder, “[[Modeling and Mitigation of Static Noise Margin Variation in Subthreshold SRAM Cells]],” _IEEE Transactions on Circuits and Systems I: Regular Papers_, vol. 64, no. 10, pp. 2726–2736, Oct. 2017. doi:10.1109/tcsi.2017.2700818





