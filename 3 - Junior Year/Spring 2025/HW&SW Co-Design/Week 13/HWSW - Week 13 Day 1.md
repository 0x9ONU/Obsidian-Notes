Date: 21st April 2025
Date Modified: 21st April 2025
File Folder: Week 13
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Power and Energy

Power is drawn from a voltage source attached to the $V_{DD}$ pin(s) of a chip:
1. **Instantaneous Power**: $P(t) = I(t)V(t)$
2. **Energy**: $E = \int_0^T P(t)dt$
3. **Average Power**: $P_{avg} = \frac{E}{T} = \frac{1}{T} \int_o^T P(t) dt$

## Power in Circuit Elements

![[Pasted image 20250421110856.png | center]]

$$P_{VDD} = I_{DD}(t)V_{DD}$$
![[Pasted image 20250421110935.png | center]]
$$P_R(t) = \frac{V_R^2(t)}{R}=I^2_R(t)R$$
![[Pasted image 20250421111012.png | center]]

$$E_C= \int_0^\infty I(t)V(t)dt =\int_0^\infty C \frac{dV}{dt}V(t)dt = C\int_0^{V_C}V(t)dV=\boxed{\frac{1}{2}CV_C^2}$$

## Charging a Capacitor

When the gate output rises:
- Energy stored in capacitor is $E_C = \frac{1}{2} C_L V_{DD}^2$
- But energy drawn from the supply is:

$$E_{VDD} = \int_0^\infty I(t)V_{DD}dt = \int_0^\infty C_L \frac{dV}{dt}V_{DD}dt$$
$$E_{VDD} = C_LV_{DD}\int_0^{V_{DD}}dV= \boxed{C_LV_{DD}^2}$$
- Half the energy from $V_{DD}$ is dissipated in the PMOS transistor as heat, other half stored in capacitor ($\frac{1}{2}CV^2$)

When the gate output falls:
- Energy in capacitor is dumped to GND
- Dissipated as heat in the NMOS transistor ($\frac{1}{2}CV^2$)

![[Pasted image 20250421111540.png | center]]

## Switching Waveforms

When $V_{DD} = 1V, C_L = 150fF, f = 1GHz$

![[Pasted image 20250421112013.png | center]]

## Switching Power

$$P_{switching}=\frac{1}{T}\int_0^T I_{DD}(t)V_{DD}dt$$
$$= \frac{V_{DD}}{T}\int_0^T I_{DD}(t)dt$$
$$=\frac{V_{DD}}{T} [Tf_{sw}V_{DD}$$
$$\boxed{P_{switching} = CV_{DD}^2f_{sw}}$$
### Activity Factor

Suppose the system clock frequency $= f$

Let $f_{sw} = \alpha f$, where $\alpha$ is the *activity factor*:
- If the signal is a clock, $\alpha = 1$
- If the signal switches once per cycle, $\alpha = 1/2$

Dynamic Power: $$P_{switching} = \alpha CV_{DD}^2 f$$
## Dynamic Power Reduction

Try to minimize:
- Activity Factor
- Capacitance
- Supply Voltage
- Frequency

### Activity Factor Estimation

Let $P_i = \mbox{Prob(Node } i = 1)$
- $\hat P_i = 1-P_i$

$\alpha_i = \hat P_i \times P_i$

**Completely random data has $P = 0.5$ and $\alpha = 0.25$**

#### Switching Probability

![[Pasted image 20250421113458.png | center]]

##### Example

```ad-question
A 4-input AND is built out of two levels of gates. Estimate the activity factor at each node if the inputs has $P = 0.5$
```

![[Pasted image 20250421114042.png | center]]

### Power Dissipation Sources

$$P_t = P_{dynamic} + P_{static}$$

Dynamic power: $P_{dynamic} = P_{swiching} + P_{shortcircuit}$
- Switching load capacitances
- Short-circuit current

Static Power: $P_{static} = (I_{sub}+I_{gate} +I_{junct} + I_{contention})V_{DD}$
- Subthreshold leakage
- Gate leakage
- Junction leakage
- Contention Current

#### Dynamic Power Example

1 billion transistor chip
- 50M logic transistors
	- $12 \lambda$
	- $\alpha = 0.1$
- 950M memory transistors
	- $4 \lambda$
	- $\alpha = 0.02$
- $1.0V \space 65nm$ process
- $C = 1 fF/\micro m$ (gate) + $0.8 fF/\micro m$ (diffusion)
  
```ad-question
Estimate dyanmic power consumption at 1GHz. Neglect wire capacitance and short-circuit current.
``` 

$$C_{logic} = (50*10^6)(12 \lambda)(0.025 \micro m/\lambda)(1.8fF/\micro m)=27 nF$$
$$C_{mem} = (950*10^6)(4 \lambda)(0.025 \micro m/ \lambda)(1.8 fF / \micro m)= 171nF$$
$$P_{dynamic} = [0.1C_{logic}+0.02C_{mem}](1.0)^2(1.0GHz)=6.1W$$











