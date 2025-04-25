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

The second approach focuses on a pipeline approach to reduce the complexity of the system. For context, a pipeline it divides complex function blocks into smaller blocks and inserts registers between each of the blocks to reduce the complexity of a synchronous system. A pipelined system helps shorten the critical paths of sequential circuits. Reduced critical paths help negate the  degradation introduced by NBTI. It also reduces the capacitive load at each stage, which allows for a lower supply voltage for DFVS and saves power overall. Figure 2 below shows the schematic diagram of how the authors implemented the pipeline on their chip:

![[Pasted image 20250420180754.png | center]]
<center><b> Figure 2</b>: Schematic Diagram of Pipelining [1] </center>

The third solution is the paper’s main contribution to the problem. The authors specifically address the problem with NBTI by utilizing high-$V_{th}$ buffers on the critical path by using an algorithm. In the algorithm, it identifies buffers with high-aging skew using NBTI modeling, and then uses a divide-and-conquer approach to optimize replacements. This allows for a up to a 60% skew reduction with negligible area/power overhead. 

#### Study #2: “Low-Power Clock Distribution Using a Current-Pulsed Clocked Flip-Flop [2]”

The authors of this paper, unlike the last, try to focus on the reduction of power consumption and skew caused by the current stage-of-the-art in synchronous digital circuits. In a chip, a clock has to be equally distributed to allow for synchronous processing, which is the job of the clock distribution network (CDN). However, the traditional voltage-mode clock distribution networks (VM CDNs) suffer from high dynamic power loss. At the current time, it is found that VM CDNs consume up to 70% of a total chip’s power and require full-swing voltage transitions. Not only that, they are susceptible to clock skew due to global interconnection delay across the system and switching times being bottlenecked by the voltage-switching delay. The authors look toward the possibility of using a current-sensing solution instead as they rely on changes in current rather than voltage. However, they recognize that CM logic can also suffer from high *static* power loss, which makes it impractical for clock distribution. Figure 3 below illustrates a typical CM model that suffers from static power loss and high clock skew. To solve this issue, the authors proposed a new model to make current-mode clock distribution viable.

![[Pasted image 20250421100239.png | center]]
<center><b> Figure 3</b>: Previous CM Schemes Used an Expensive Transimpedance Amp Which Could Result in Significant Skew [2] </center>

The **Current-Mode Pulsed Flip-Flop With Enable (CMPFFE)** takes the current CM solution for clock distribution and helps solve the various issues around it. Much like how a DAC and an ADC move signals between an analog and digital state, the CMPFFE features a current-comparator stage and a push-pull current driver stage which converts a CM clock input into a voltage pulse and visa versa in a way that minimizing voltage swing and clock skew. Another one of it’s main contributions is an $EN$ signal. It might seem simple, but the enable signal allows for the static power to be reduced in standby mode by preventing bias current from happening in the system. It also contains a symmetric H-tree distribution network that allows for equal current delivery to all nodes without the need for buffers. Figure 4 below illustrates the proposed CM-based CDN network:

![[Pasted image 20250421101706.png | center ]]
<center><b> Figure 4</b>: The Proposed CMPFFE Uses Current-Comparator and Feedback Connection to Generate a Voltage Pulse that Triggers a Register Stage to Store Data in the Storage Cell [2] </center>

The authors, providing the first “true” CM clock distribution solution, found that their methodology was very successful. They created a 45nm CMOS chip based on their schematics and tested it at a frequency of $5 GHz$. They found that eliminating the buffers found in VM allowed for a 62% lower power usage. They also found that there was less noise coupling due to capacitance and a 60% less clock skew than traditional VM CDNs. In the future, the authors hope to extend the idea into a smaller technology (sub-45nm) and try to dynamic tune the current to improve variation. Figure 5 below shows the CMOS stick diagram for the cell the clock distribution network takes up on the chip:

![[Pasted image 20250421102559.png | center]]
<center><b> Figure 5</b>: Using Standard Cell Height, the Proposed CM FF Consumes Lower Silicon Area Compared to the Recently Reported VM Pulsed FFs [2] </center>

#### Study #3: ““Power and Skew Reduction Using Resonant Energy Recycling in 14-nm FinFET Clocks [3]”

Similarly to the previous paper, the authors of the third paper found that high power consumption and clock skew are the problems with the current state-of-the-art. Clock distribution consume a lot of power due to the large capacitive loads necessary to run with DVFS having limited effect on it. Uneven clock arrival times are common as process variations make it difficult to properly synch the clocks. Additionally, the current resonant techniques to help smooth out the clock suffer from narrow frequency operation and even high clock skew. To solve this problem, the authors introduce the novel **resonant clocking architecture**, which utilizes series LC resonance and inductor matching to reduce clock skew. The proposed schematic can be found below in Figure 6: 

![[Pasted image 20250421104456.png | center]]
<center><b> Figure 6</b>: The Proposed Wideband Resonant Clock Tree Architecture Consists of a System Clock Source as the Root, Followed by a Pulse Generator, Multiple PSR Drivers with On-Chip Inductors, Clock Gaters, Clock Buffers, and Finally, Various Sets of Resonant Pulsed FFs in the Leaf Node [3] </center>

As the name suggests, the resonant clocking architecture uses an *inductor* ($L$) on the discharge path to store energy within a magnetic field, which can be recycled during the next clock edge. This makes it such that only 50% of the switching energy is dissipated, with the other half going directly into charging the capacitor on the next clock edge. It also contains a pulse generator using a XNOR gate and a voltage doubler, which allows for consistent timing. Tuned LC tanks are also introduced, which allows for each clock branch’s inductor to match the load capacitance to equalize the frequencies. Dealing with the load capacitance using an inductor allows the clock skew to drop by around 24 times. The author also promotes two different types of flip-flops (FFs) that can improve on the traditional flip-flips used in non-resonant architectures. Firstly, the 13T Pulsed FF (13TPFF) promises a negative setup time ($-25ps$) for the tradeoff of a larger area by using pulsed clocks for energy recovery. Pulsed Resonant FF (PRFF), on the other hand, has the lowest power guarantees with $35 ps$ of delay. Figure 7 below shows the proposed flip-flops:

![[Pasted image 20250421165920.png | center]]
<center><b> Figure 7</b>:  The Proposed Series Resonant Pulsed FFs use (a) A PSR to Generate Pulse SIgnal to Drive the Register Stage, (b) 13T Register, (c) Pulsed Register, (d) TSPC Register to Implement Three Pulsed FFs [3]</center>

As an experiment, they implemented the various flip-flops combined with the resonant clock architecture and tuned LC tanks on a 14nm FinFET chip. PRFF found a 43% power reduction at 5 GHz, while 13TPFF had 22.7% savings over traditional as well. They found a 91% lower skew with PRFF compared to the state-of-the-art. They also found a low CLK-to-Q delay in each flip flop, with only 35ps and 37.3ps for PRFF and 13TPFF respectfully. These results show that the robustness of the proposed architecture can greatly improve clock skew, leading to a sub-5ps skew, which is much lower than the other methods seen so far.
#### Study #4: “A Reinforced Learning Solution for Clock Skew Engineering to Reduce Peak Current and IR Drop [4]”

The authors of this study, when looking into the various problems of engineering design and clock skew, came up with three main culprits that they wanted to fix. Firstly, they have concerns with how current zero-skew registers are handled. To reduce skew, all the registers are switched simultaneously, which leads to a sudden surge in current demands from the clock distribution network. This will cause a resistive and inductive drop due to the high current changes, which will cause clock jitter and potential skew as the supply voltage becomes unstable to take care of the higher than expected current. They are also worried about the tradeoff between balancing skew and timing violations. Clock skew can actually be beneficial in spreading out switching activity, which can help reduce the peak current. However, excessive skew can introduce timing violations as setup/hold times desynch and cause erroneous behavior. Figure 8 below shows how simultaneous switching can case a heavy load on the current demand in an IC.

![[Pasted image 20250421172409.png | center]]
<center><b> Figure 8</b>:  A Sequential Netlist with Balanced Clock Tree, Simultaneous Arrival Time of the Clock to All Register, Surge of Demanded Current on Active Edge of the Clock [4]</center>

The paper itself proposed a method that utilized reinforcement learning (RL) to optimize the clock skew. Unlike the previous papers that try to eliminate clock skew, it utilizes previously gathered data in a digital circuit and adjust clock arrival times at registers. The authors embrace that clock skew can not only happen, but it can also be controlled to minimize the demanded current while ensuring time violations do not happen. 

The framework of the RL model was laid out in a clever way. Much like other reinforcement learning, it has access to the current state of the circuit so that it can “see” how the circuit is running. These variables include register locations, clock arrival times, and any timing violations that have happened. From there, a pre-determined set of actions that the model can take is given. In this case, it has the power to “insert” or “remove” buffers to adjust the clock’s skew or move a signal to an adjacent register. Then, three sets of rewards/punishments were laid out. A positive reward was given if the clock arrival spread was increased, but a large negative reward was given if any timing violations were introduced. However, it is given an opportunity to gain a small reward if a previous violation was resolved later. From there, the model was able to take random actions to explore the design space and populate the registers. Afterwards, the training wheels were removed slowly as the reward/punishment system was slowly given to the model as it learned what good actions were and when tot take them. After letting it run, they found that the spread of clock arrival times improved with a 35-40% reduction in peak current. Due to the reduced peak current, there was a reduction in voltage noise, lower clock jitter, and even improved the voltage margins. They concluded on the fact that controlling how much clock skew is in a system rather than reducing it outright can help reduce current spikes and the clock from jittering and leading to an uncontrollable amount of skew. Figure 9 below illustrates how the reinforcement model is laid out:

![[Pasted image 20250421174627.png | center]]
<center><b> Figure 9</b>:  Reinforcement Learning Solution for Peak Current Reduction, and Description of Rewards in This Work [4]</center>

### Solution & Mitigation Technique Comparison

When comparing each of the solutions, there are multiple different ways each paper focused on how to either solve or mitigate the problems around clock skew. The first paper tried to solve the issue by minimizing aging-constraints and variable silicon differences on gates and making sure that $V_{th}$ is consistent so that DVFS can be used without any worries [1]. The second paper tried to improve how the clock distribution networks (CDN)  by using a novel CM-based CND that improves power draw, decrease clock skew/jitter, and adds an enable system to reduce static power draw [2]. The third paper changed the architecture by introducing inductive elements to balance out the conductive loads to improve on clock skew and power draw [3]. The fourth paper instead controlled when skew could happen to ensure that current spikes do not lead to jitter and skew of their own [4]. The cool part about all these solutions is the fact that a hybrid approach can be taken for implementation. For example, the first paper’s consistency for $V_{th}$ can be combined with the resonant architecture from paper three and create a method that will cover each other’s backs [1, 3]. However, paper four also has a good lesson to learn about how clock skew must be balanced. Without a little bit of clock skew, the circuit can become too synchronous and lead to a current that is too high. Because of that, paper four’s controlled amount of clock skew can help mitigate the downsides of clock skew, but continues to allow DVFS to happen at more frequencies than normally expected [4].
## Noise Margins

As the gap between the 

### Introduction

#### Study 1: “Automating the Sizing of Transistors in CMOS Gates for Low-Power and High-Noise Margin Operation" [5]

The authors of this paper, much like this report, found that technology scaling to lower supply voltages $V_{DD}$ has led to problems when it comes to noise margins. They understand that as $V_{DD}$ as begun to lower, the gap between signals and noise as decreased, which allows circuits to be more susceptible to noise. The authors; however, understand that this change is necessary as CMOS technologies are moving towards a lower $V_{DD}$ to reduce the dynamic and static power of their respective systems. The authors are most concerned with the static noise margin (SNM), which represents the minimal amount of voltage needed to switch from one state to another on a gate. Even though the SNM was mostly used for measuring SRAM performance, the metric has become increasingly relevant for logic gates due to the lowered $V_{DD}$. Due to these concerns with the current logic gate architectures, the authors propose the use of optimal transistor sizing to help design better CMOS logic gates with high SNM and low power consumption, even as $V_{DD}$ scales towards lower supply voltages. More precisely, they provide a feedback-controlled automated transistor sizing system that both optimizes the channel length ($L$) and width ($W$). Extending the $L$ beyond the minimum helps reduce leakage current and improves the SNM at the cost of the delay. The width can be optimized between transistors such that the rise/fall times of each transistor can be balanced to reduce the overall power. Figure 10 below illustrates the effect of $L$ on both NMOS and PMOS technologies:

![[Pasted image 20250423193920.png | center]]
<center><b> Figure 10</b>:  The Effect of Length on a Gate’s (a) SNM and (b) Delay  [5]</center>

Knowing this, the authors propose three different methods: setting an optimal channel length ($L_{opt}$), progressive transistor sizing, or hybrid sizing schemes. As the name suggests, setting an **optimal channel length** helps standardize both $L_{NMOS}$ and $L_{PMOS}$ across a chip. To minimize problems caused by the noise, a length for each type of transistor is given so their length causes the threshold voltage ($V_{th}$) is approximately a half of $V_{DD}$ such that $V_{th} \approx V_{DD}/2$. This method helps balance out the NMOS and PMOS threshold voltages by just adjusting the length of the transistors globally. The **progressive transistor sizing** uses a special scheme that will help balance the pull-up/pull-down paths and maximize the capacitive loading power. The process automates setting $W$ by iteratively adjusting the width such that both the target crossover voltage is hit  ($V_{out} \approx V_{DD}/2$)  while trying to minimize the average error. To find the acceptable error, the following equation is used: $\epsilon_{avg} = \sum_{i=1}^N (\frac{V_{DD}}{2}-V_{out})/N$, where $N$ is the number of inputs-sets that cause a change to it’s output. Figure 11 below shows the block diagram for the PID controller that automates this width setting. Using these methods, a set of *hybrid sizing schemes* can be developed. The authors created three variations called “Type-I”, “Type-II”, and “Type-III” respectively. The first type uses a standard cell $W$ and $L$, which acts like a baseline in their experiment. The Type-II scheme uses a progressive width sizing for transistors, while the  Type-III uses both progressive $W$ scaling and uses the optimal channel length.

![[Pasted image 20250424132848.png | center]]
<center><b> Figure 11</b>:  The PID-Controller-Based Transistor Sizing Scheme for Gates  [5]</center>

The authors then go onto testing each of their variations. They used 22nm PTM HP models with BSIMv4v.7 simulation software to test out their theoretical chips. Within the simulation, they measured the SNM, power, delay, area, and failures rates under each of the different schemes and variations in $V_{th}$. After measuring everything, they found that the optimal-$L$ gates maintain a higher SNM for $V_{DD}=0.4 \to 0.8V$ with a reduction of failures by 90%. They also found that Type-III gates as exhibit better power advantages over the other variations at the cost of a slightly higher delay and larger size. Even though the authors admit that the larger $L$ and changing $W$ provide higher delays and design complexity with the automated PID controller, the authors believe that these methodologies could be scalable for standard-cell libraries to help create more stable and power efficient gates, even with $V_{DD}$ approaching the noise margin of transistors.

#### Study 2: “Design and Analysis of CMOS-Based 6T SRAM Cell at Different Technology Nodes” [6]

To solve the problem with noise margins, the authors of this paper decided it would be best to change the layout of a standard cell entirely instead of just scaling it’s length and width. Specifically, they investigate the stability and performance of their standard cell by evaluating SNM, read SNM (RSNM), write SNM (WSNM), delay, power, and scalability to test it against the standard benchmark cells. Figure 12 below shows the schematic diagram of the proposed 6T SRAM cell":

![[Pasted image 20250424141832.png | center]]
<center><b> Figure 12</b>:  Schematic Diagram of 6T SRAM Cell [6]</center>

As shown above, the six transistors are placed in such a way to create two main components: cross-coupled inverters and access transistors. The two inverters, made out of an NMOS and PMOS ($M_1 + M_2$ or $M_3 + M_4$) allow for the internal storage of a bit, while the access transistors allow the SRAM cell to be accessed by data lines. Unlike DRAM, this allows both `0` or `1` to be stored within the cell without a refresh on the transistor, which send up being much faster. The two access transistors ($M_5$ & $M_6$) allow the values to discharge to the read lines. Due to the added transistors, the SRAM cell is able to do three different operations: hold, read, and write. The hold operation keeps the data when there is $WL$ is low, and there is no connection to the data lines and the cell holds its value. On the read operation, the bit lines $BL$ and $\bar{BL}$  are charged and then discharged through the access transistors. The access transistors create a voltage differential that can be amplified and read as either `0` or `1`. Finally, the write operation allows the access transistors to override the inverter’s states and allows them to write new data.

To test the validity of the proposed SRAM cell, a set of BSIM3 PTM models were used in HSPICE to simulate the cells. Within the program, the authors created four different CMOS cells using four different lengths: 180nm, 90nm, 65nm, 45nm. 
#### Study 3: “Design and Performance Analysis of 6T SRAM Cell on Different CMOS Technologies with Stability Characterization” [7]

#### Study 4: “Modeling and Mitigation of Static Noise Margin Variation in Subthreshold SRAM Cells” [8]

#### Study 5: “A Review of Offset and Noise Reduction Techniques for CMOS Amplifiers” [9]

### Case Studies

### Solutions & Mitigation Techniques Comparison

## Conclusion

## Resources

[1] R. Rakesh, “[[NBTI-aware Skew Minimization Techniques]],” _International Journal of Electronics Engineering_, vol. 7, no. 1, pp. 37–46, 2015.
[2] R. Islam and M. R. Guthaus, “[[Low-Power Clock Distribution Using a Current-Pulsed Clocked Flip-Flop]],” _IEEE Transactions on Circuits and Systems I: Regular Papers_, vol. 62, no. 4, pp. 1156–1164, Apr. 2015. doi:10.1109/tcsi.2015.2402938
[3] D. Challagundla, M. Galib, I. Bezzam, and R. Islam, “[[Power and Skew Reduction Using Resonant Energy Recycling in 14-nm FinFET Clocks]],” _2022 IEEE International Symposium on Circuits and Systems (ISCAS)_, pp. 268–272, May 2022. doi:10.1109/iscas48785.2022.9937771
[4] S. A. Beheshti-Shirazi _et al._, “[[A Reinforced Learning Solution for Clock Skew Engineering to Reduce Peak Current and IR Drop]],” _Proceedings of the 2021 Great Lakes Symposium on VLSI_, pp. 181–187, Jun. 2021. doi:10.1145/3453688.3461754
[5] A. Beg, “[[Automating the Sizing of Transistors in CMOS Gates for Low-Power and High-Noise Margin Operation]],” _International Journal of Circuit Theory and Applications_, vol. 43, no. 11, pp. 1637–1654, Oct. 2014. doi:10.1002/cta.2031
[6] M. Devi, C. Madhu, and N. Garg, “[[Design and Analysis of CMOS-Based 6T SRAM Cell at Different Technology Nodes]],” _Materials Today: Proceedings_, vol. 28, pp. 1695–1700, 2020. doi:10.1016/j.matpr.2020.05.130
[7] S. Saun and H. Kumar, “[[Design and Performance Analysis of 6T SRAM Cell on Different CMOS Technologies with Stability Characterization]],” _IOP Conference Series: Materials Science and Engineering_, vol. 561, no. 1, p. 012093, Oct. 2019. doi:10.1088/1757-899x/561/1/012093
[8] N. Zheng and P. Mazumder, “[[Modeling and Mitigation of Static Noise Margin Variation in Subthreshold SRAM Cells]],” _IEEE Transactions on Circuits and Systems I: Regular Papers_, vol. 64, no. 10, pp. 2726–2736, Oct. 2017. doi:10.1109/tcsi.2017.2700818
[9] C. A. Dos Reis, “[[A Review of Offset and Noise Reduction Techniques for CMOS Amplifiers]],” _Journal of Integrated Circuits and Systems_, vol. 17, no. 1, pp. 1–9, Apr. 2022. doi:10.29292/jics.v17i1.572





