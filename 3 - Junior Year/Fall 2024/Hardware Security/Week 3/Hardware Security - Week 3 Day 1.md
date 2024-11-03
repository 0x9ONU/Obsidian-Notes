Date: 9th September 2024
Date Modified: 9th September 2024
File Folder: Week 3
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- IC Trust
- Trojan Detection Approaches

```

# IC (System) Trust

```ad-summary
title: Objective
Ensure that the *fabricated chip/system* will cary out only our desired function and **nothing more**
```

**Challenges**:
- *Tiny*: Several gates to millions of gates
- *Quiet*: Hard-to-activate (rare event) or triggered itself (time-bomb)
- *Hard to model*: Human intelligence
- Conventional test and validation approaches fail to reliably detect hardware Trojans

## Classification of Trojan Detection Approaches

![[Pasted image 20240909140740.png]]

### Destructive Approach

- Reverse engineering to extract layer-by-layer images by using delayering and Scanning Electron Microscope
- Identify transistors, gates and routing elements by using a template-matching appraoch

```ad-note
This approach needs a **golden IC** that 100% does not have a hardware Trojan in it.
```

### Non-Destructive Approach

**Run-Time Monitoring**: Monitor abnormal behavior during run-time
- Exploit pre-existing redundancy in the circuit
- Compare results and select a trusted part to avoid an infected part of the circuit.

**Test-time Authentication**: Detect Trojans throughout test duration
- Logic-testing-based approaches
- Side-channel analysis-based approaches

## Hardware Trojan Benchmarks

A set of **trust benchmarks** for research in academia, industry, and government is needed to
- Provide a baseline for examining diverse methods developed
- Establishing a sound basis for the hardness of each benchmark instance
- Help increase reproducibility of results by others who intend to employ certain methodologies in their design flow

See NSF supported **Trust-Hub** website (www.trust-hub.org)
- Complete taxonomy of Trojans
- more than 120 trust benchmarks
- More than 300 publications used these benchmarks

## Logic Test Approach

Focuses on test-vector generation for:
- Activating a Trojan circuit
- Observing its malicious effect on the payload at the primary outputs
- Both functional and structural test vectors are applicable.

**Pro & Con:**
- **Pro**
	- Straight-forward and easy to differentiate
- **Cons**
	- The difficulty in exciting or observing low controllability or low observability nodes.
	- Intentially inserted Trojans are tirggered under rare conditions.
	- It cannot trigger Trojans that are activated externally and can only observe functional Trojans.

```ad-example
A 64-bit adder needs 65 bits of data, which means $2^{65}$ combinations
- At 100Mhz, it will take 317 years to process all these combinations
```

## Functional Testing

**Feasible Trojan space is inordinately large**
- *Deterministic* test generation infeasible. Therefore, a statistical appraoch is more effective

**MERO: Multiple Excitation of Rare Occurance:**
- It is a statistical approach taht finds rare events in the circuit
- Generate vectors to trigger each rare node **N** times
- Provides high confidence in detecting unknown Trojans

## Side-Channel Trojan Detection

Relies on observing Trojan effect in physical side-channel parameter, such as switching current, leakage current, path delay, electromagnetic (EM) emission

**Challenges**

Due to process variations, it is extremely challenging to detect the Trojan by considering $F_{max}$ or $I_{DDT}$ individually

```ad-note
title: Remember
$$T_{clk} > T_{set} + T_{hold} + T_{comb}$$
```

An attacker might throw a hardware trojan on the *critical path* (when the CLK is near $f_{max}$) to try to activate and fail such that:

$$T_{clk} \not < T_{set} + T_{hold} + T_{max} + T_{HT}$$

Trojans can also be inserted on the paths that are small as well.

### How to Combat

To succeed, we must check each delay on multiple frequencies to the gold standard to try to find:
- Process differences (worse case)
- Bad hardware
- Hardware Trojans (best case)

#### Shadow Registers

Provides a possible solution for measuring internal path delay
-  Contains a shadow register, one comparator to compare the delay, and one result register.
- Compares and concatenates delay to test to see differences in delay from frequency to frequency

**Limitations**:
- Process variation
- Overhead
- S-Clock
- Output

### Detection through Power Consumption

Hardware Trojans in a chip can cause a surge in power consumption.
- However, this can be difficult to measure due to a change in *sensitivity*

#### Sensitivity

$$\mbox{Trojan Size} \downarrow \space  \Rightarrow \mbox{Sensitivity} \space \downarrow $$
$$\mbox{Circuit Size} \space \downarrow \space \Rightarrow \mbox{Sensitivity} \space \downarrow$$

$$\mbox{Sensitvity} = \frac{I_{tamp}-I_{orig}}{I_{orig}}*100 \%$$

#### Challenges

**Pattern Generation**:
- How to increase switching activity in Trojans?
- How to reduce background noise?
- Swithcing locality
- Random Patterns

**Measurement Device Accuracy**
- Measurement noise

**Process Variations**
- Measurement Noise

**On-Chip Measurement**
- Vulnerable attack

**Authentication Time**
- Trojans can be inserted randomly

![[Pasted image 20240909213203.png]]



