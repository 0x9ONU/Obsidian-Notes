
#research 
# Glossary
- *Section I*: Overview
- *Section II*: RC Parallel Circuit
	- *Part 1*: Theory
	- *Part 2*: Build
	- *Part 3*: Results
- *Section III*: Differential-OP Amps
- *Section IV*: Three-Bit Flash ADC
	- *Part 1*: Regions
	- *Part 2*: Priority Encoder  
- *Section V*: Eight-to-One MUX
- *Section VI*: Microcontrollers & Code
- *Section VII*: Conclusion & Future Work
- *References*

# Section I: Overview

When it comes to the world of Analog-to-Digital Converts (ADCs), there are many options to choose from. The main type of ADCs are Successive Approximation (SAR), Delta-Sigma ($\Delta \Sigma$), Dual Slope, Pipelined, and Flash [1]. Out of the main types, Flash ADCs peaked the interest of the research team the most. When compared to the other three versions, Flash provides the best sample rate and bit resolution at low bit levels of all the types, which would allow for highly accurate readings and quantization levels without sacrificing time. However, unlike the other variations, Flash ADCs are particularly expensive to produce as they require an exponential amount of comparators per bit ($2^n -1$  comparators where $n$ is the number of bits). We found that, for the Flash ADC to be competitive, a new approach was necessary. 

```ad-important
title: Opportunity Statement 
To improve the current landscape for the use of flash ADCs in the electronics world, the project for Summer 2024 will focus on using a novel approach to measure the resistance of a RC circuit accurately using Flash ADCs, differential amplifiers, and multiplexers.
```

In Section II, the RC circuit is covered. In brief, *a logarithmic staircase control (CTRL)* signal that is powered by a DAC will be placed at the gate of an *NMOS*. This controls the charge and discharge of a resistor and capacitor in parallel to get an accurate reading of the final voltage by allowing the voltage to saturate in certain regions before it discharges. These regions are critical and determine the range the resistor might be in. The relation on the charging was found to be a modified version of the standard discharging equation.

In Section III, the amplification will be handled. Coming off of the capacitor node, it will be wired into *eight different differential op amps* that will scale the voltage thresholds from each region to zero to five volts. This will allow for more accurate readings for the ADCs later on.

In Section IV, the *one coarse three-bit Flash ADC* will be used in combination of another *fine ten-bit ADC* in order to get a thirteen-bit digital output. Controlled by the input of the provided RC circuit, the three bits will be used to both control the Eight-to-One MUX as well as provide the three most significant bits for the output. 

In Section V, the *Eight-to-One Multiplexer* with be used to select which of the amplified regions will be utilized for the fine ADC. The three-bits from the coarse ADC will act as the select bits for this ADC and will determine which region is sent from the amplifiers to the ADC to compute the final bits. The flowchart of this process can be seen below in **Figure 1** and the Block Diagram can be seen in **Figure 2**:

```mermaid
flowchart TD

A(DAC)-->|CTRL|B(RC Circuit)
B-->|Voltage| C(Three-bit Coarse ADC) & D(Amplifiers)
C-->|Select| E(Eight-to-One MUX)
C-->|MSBs| O(Thirteen-Bit Output)
D-->|Input|E
E-->|Fine Input|F(Ten-Bit Fine ADC)
F-->|LSBs| O

```
<center> <b>Figure 1</b>: Flow Chart Overview </center>

![[Evan's Fellowship Research Integrated Circuits Report 1 2024-06-19 15.39.32.excalidraw]]
<center> <b>Figure 2</b>: Block Chart Overview </center>

#  Section II: RC Parallel Circuit

For the other parts of the circuit to work, it is critical that there is an input that has a wide range of values to properly assess the viability of this new method of ADC. Therefore, the following circuit will utilize a new version of an *NMOS sensor* that will borrow many of the characteristics of the *MPRS technique* used to achieve high *dynamic range (HDR)* in some active pixel sensor (APS), while also contributing new insight on this technology by experimenting with RC discharging rather than a photodiode in parallel with a capacitor [2].

```ad-note
title: Author's Note
This section is relatively long as this is one of the more important parts of the circuit and took the longest to accomplish compared to the different sections. Sit back and grab a snack as I detail everything.
```

## Part 1: Theory

### RC Circuits

RC Circuits are critical when using capacitors’ charging and discharging properties in DC. A DC power source charges up a capacitor in series or in parallel with a resistor, which is then disconnected and allows the capacitor to drain over the resistor and into the ground of the circuit [3]. This ideal process can be seen below in **Figure 3** below:

![[Pasted image 20240619163638.png]]
<center> <b>Figure 3</b>: Ideal RC Circuit Charging and Discharging [3] </center>

Importantly, this relationship can be modeled by a few ideal equations, which describes the amount of voltage over the capacitor at anytime $t$ during it charging or discharging [3-4].
$$v(t) = v(\infty) + [v(0^+)-v(\infty)]e^{\frac{t}{\tau}} \space \space \space \space \space  -\enclose{circle}{1}$$
$$V_c(t) = V_s(1-e^\frac{-t}{\tau}) \space \space \space \space \space  -\enclose{circle}{2}$$
$$V_c(t) = V_s(e^\frac{-t}{\tau}) \space \space \space \space \space  -\enclose{circle}{3}$$

Out of the three equations, the most important one is the third equation and will be the primary focus on this research area. It explains that the voltage at anytime over a capacitor after fully charging and discharging is equal to the voltage source times an exponential decay function. This exponential decay function is model as $e^\frac{-t}{\tau}$ where $t$ is the time since the discharge began and $\tau$ is the time constant. This time constant is a function such that $\tau = RC$ and describes the amount of time needed for approximately $63.2 \%$ of the capacitor to discharge [3]. Additionally, another important equation which models the *steady state* can be seen below [4] :

$$e^\frac{-t}{\tau} \tau \approxeq 0 \space \forall t \ge 5\tau \space \space \space \space \space  -\enclose{circle}{4}$$

This equation demonstrates that for any $t$ greater than 5 time constants, the voltage over the capacitor will start to reach equilibrium as it approaches 0. This equation will be important for determining the dynamic range later in this report. 

By using a combination of these techniques, a constant period of discharge and call it $T$ and a set capacitor $C$ is set with a voltage value $V_{cc}$ that is used to charge and discharge the capacitor and resistor ($R$) that are in parallel to find the difference in the amount of discharge depending on the selected resistor. This works since the rate of discharge is directly connected to resistance through the time constant relation. However, according to plenty of literature, a parallel RC circuit is typically not ideal when measuring the amount of voltage and is instead better at monitoring the change of current. This is due to the typical setup having the input node being connected to the output node, which makes a current divider as shown in **Figure 4**: [5]

![[Pasted image 20240620100546.png]]
<center> <b>Figure 4</b>: Standard Parallel RC Circuit [5] </center>

To overcome the limitations, a device that acts like a switch must be utilized to connect the $V_{cc}$ node to the capacitor node during charge and disconnect them during discharge, allowing the capacitor to create current through the resistor. Therefore, much like the ADS’s of the past, a transistor will be used [2]. Specifically an NFET MOSFET, which is also known as a NMOS, is critical in the switching the occurs.

### NMOS Transistors

NMOS transistors are a silicon device that is critical for many applications in the electronics today. Specifically, they allow the flow of current from one end to another only when a sufficient amount of voltage is applied to the gate of the transistor [6]. A diagram of the internals of a typical NMOS can be seen below in **Figure 5**:

![[Electronics - Week 9 Day 2 2024-03-27 13.06.50.excalidraw]]
<center> <b>Figure 5</b>: Internals of a NMOS Transistor</center>

Importantly, the NMOS acts in *three regions* that determine the current flow from the source to the drain. These regions are known as **cutoff**, **triode**, and **saturation**. A table of each of these regions and their dictating equations and characteristics can be seen below in **Table 1:**

<center> <b>Table 1</b>: NMOS Transistor Characteristics </center>

| Region        | Characteristics                                                                                                                                                                                                                    | Boundary                | Equation                                                                     |
| ------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------- | ---------------------------------------------------------------------------- |
| Cutoff        | There is not enough voltage connected to the gate voltage. The source and drain are not connected by the depletion region.                                                                                                         | $V_{GS} < V_t$          | $I_D = 0$                                                                    |
| Active/Triode | There is enough voltage at the gate and the source that the depletion area connects both the source and drain together. As more voltage is added, there is a linear increase in the amount of current as it approaches saturation. | $V_{DS} < V_{GS} - V_t$ | $I_D = K_N^\prime \frac{W}{L}[(V_{GS}-V_t)V_{DS}V_{DS}- \frac{V_{DS}^2}{2}]$ |
| Saturation    | The voltage has increased to a point where the channel created between the source and the drain is completely pinched off. It leads to a constant $I_D$ that does not increase past this point.                                    | $V_{DS} > V_{GS} - V_t$ | $I_D = \frac{K_N^\prime}{2} \frac{W}{L}(V_{GS} - V_t)^2$                     |
Due to the transistors property to act much like a switch with its cutoff and saturation regions, it is critical in controlling the charge and discharge of the parallel RC circuit and measuring its voltage at the end of this discharge period. To do so, a constant voltage source $V_{cc}$ will be applied to the source branch of the transistor and the parallel RC circuit will be connected to the drain. Then, another variable voltage source, called *CTRL*, is connected to the gate of the transistor to control the current.

#### CTRL Signal

Typically, the CTRL signal would pulse on and off every time period $T$ to charge the circuit and discharge the circuit on the clock. However, as described by Dr. Youssfi and Hassan, there is a chance that a provided value of resistance can cause full saturation, which can ruin the dynamic range [2]. Therefore, Dr. Hassan proposed an alternative CTRL signal that could prevent the oversaturation problem faced with this design [7]. This control signal is designed to drop a constant amount of voltage, which we call the threshold voltage ($V_{th}$), by a logarithmic time difference on the power of two. This means that it will drop in an exponentially shorter amount of time until it hits its eighth drop. At this point, the voltage will be dropped for a 128th of the period $T$ right before the gate opens back up to 5 volts and is charged again. **Table 2** illustrates this in detail, while **Figure 6** shows an example given that $V_{cc} =5V \space \& \space V_{th}=0.3V$:

<center> <b>Table 2</b>: CTRL Signal </center>

| Voltage           | Time Range                                    |     | Duration        |     |
| ----------------- | --------------------------------------------- | --- | --------------- | --- |
| $V_{cc}-V_{th}$   | $0 \Rightarrow \frac{T}{2}$                   |     | $\frac{T}{2}$   |     |
| $V_{cc}-2V_{th}$  | $\frac{T}{2} \Rightarrow \frac{3T}{4}$        |     | $\frac{T}{4}$   |     |
| $V_{cc} -3V_{th}$ | $\frac{3T}{4} \Rightarrow \frac{7T}{8}$       |     | $\frac{T}{8}$   |     |
| $V_{cc} -4V_{th}$ | $\frac{7T}{8} \Rightarrow \frac{15T}{16}$     |     | $\frac{T}{16}$  |     |
| $V_{cc} -5V_{th}$ | $\frac{15T}{16} \Rightarrow \frac{31T}{32}$   |     | $\frac{T}{32}$  |     |
| $V_{cc} -6V_{th}$ | $\frac{31T}{32} \Rightarrow \frac{63T}{64}$   |     | $\frac{T}{64}$  |     |
| $V_{cc} -7V_{th}$ | $\frac{63T}{64} \Rightarrow \frac{127T}{128}$ |     | $\frac{T}{128}$ |     |
| $0$               | $\frac{127T}{128} \Rightarrow 2T$             |     | $\frac{T}{256}$ |     |
![[Pasted image 20240620114522.png]]
<center> <b>Figure 6</b>: Example CTRL Signal </center>

As described earlier, this gradual decrease in voltage as a logarithmic step signal will prevent early desaturation in the case of lower resistances bottoming out before they reach the proper value. It is also important as it will allow the dynamic range to have different *regions*. The regions are labeled from 1 to 8 and represent where the the voltage does not saturate at. More information can be found under the next subheading when it comes to saturation and regions. The circuit for the 

# Section III: Differential OP- Amps

# Section IV: Three-Bit Flash ADC

# Section V: Eight-to-One MUX

# Section VI: Microcontrollers & Code

# Section VII: Conclusion & Future Work

# References

[1] G. Smith, “Types of ADC converters,” Data Acquisition | Test and Measurement Solutions, https://dewesoft.com/blog/types-of-adc-converters
[2] Z. Youssfi and F. Hassan, “Fast restoring of high dynamic range image appearance for multi-partial reset sensor,” _Electronic Imaging_, vol. 31, no. 4, Jan. 2019. doi:10.2352/issn.2470-1173.2019.4.pmii-589
[3] OpenStax, “10.6: RC Circuits,” Physics LibreTexts, https://phys.libretexts.org/Bookshelves/University_Physics/University_Physics_(OpenStax)/Book%3A_University_Physics_II_-_Thermodynamics_Electricity_and_Magnetism_(OpenStax)/10%3A_Direct-Current_Circuits/10.06%3A_RC_Circuits
[4] K. S. Al-Olimat, _Electric Circuits Analysis_, 3rd ed. Ronkonkoma, NY: Linus Learning, 2020.
[5] Electrical4U, “RC Circuit Analysis: Series, Parallel, Equations & Transfer Function,” Electrical4U, https://www.electrical4u.com/rc-circuit-analysis/
[6] A. S. Sedra, K. C. Smith, T. C. Carusone, and V. Gaudet, _Microelectronic Circuits_. Oxford, England: OXFORD UNIV Press US, 2019.
[7] F. Hassan, “Draft Idea”. https://drive.google.com/file/d/1SL6p3nZAVlVUhMEyUxYd5MuWDnLYOq69/view