Date: 1st April 2024
Date Modified: 1st April 2024
File Folder: Week 10
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-important
Midterm #2 on Friday, April 12th.
- Semiconductors
- Diodes
- MOSFETs
```

# MOSFETs Operations

## NFET

### Equations

**Cutoff:** $I_D = 0$

**Triode**: $I_D = K_N^\prime \frac{W}{L} [(V_{GS}-V_t)V_{DS} - \frac{V_{DS}^2}{2})$

**Saturation**: $I_D = \frac{K_N^\prime}{2} \frac{W}{L}(V_{GS} - V_t)^2$

---
$W \Rightarrow$ Width of Gate
$L \Rightarrow$ Length of Gate
$K_N^\prime \Rightarrow$ Process transconductance parameter ($\frac{A}{V^2}$)
$$K_N^\prime = \mu_n C_{ox} = (\mbox{Electron Mobility})(\frac{\mbox{Gate Oxide Capacitance}}{\mbox{Unit Area}})$$
```ad-note
This comes from the dimensions and properties of the metal, insulator, or channel for the MOSFET.
![[Electronics - Week 10 Day 1 2024-04-01 13.11.28.excalidraw]]
```

### Overdrive Effective Voltage

$$V_{ov}= \mbox{Overdrive (effective) Voltage}$$
$$V_{ov}=V_{GS}-V_t$$

### Channel Conductance/Resistance in the ***Triode*** Region

#### Conductance

$$g_{ds} = \frac{\delta I_d}{\delta V_{DS}} \space [ \mbox{The Change in Drain Current iwth Respect to } V_{DS}]$$
$$= \frac{\delta(K_N^\prime \frac{W}{L}[(V_{GS}-V_t)V_{DS} - \frac{V_{DS}^2}{2}])}{\delta V_{DS}}$$
*After taking the partial derivative*

$$g_{ds} = K_N^\prime \frac{W}{L}[V_{GS}-V_t-V_{DS}] = K_N^\prime \frac{W}{L}[V_{ov}-V_{DS}]$$

```ad-note
If $V_{DS} << V_{GS}-V_t$:
$$g_{ds} \approxeq K_N^\prime \frac{W}{L}(V_{GS}-V_t)$$
```

#### Resistance

Given the conductance, we can find the resistance $r_{ds}$ by taking the *inverse*:

$$r_{ds} = \frac{1}{g_{ds}} = \frac{1}{K_N^\prime \frac{W}{L}(V_{GS}-V_t)}, \space V_{DS} << V_{GS}-V_t$$
## Two Types of MOSFETs

**Enhancement Mode**: The channel is off unless it is formed by $V_{GS}$

**Depletion Mode**: The channel is on unless you force it to turn off.

```ad-warning
Depletion Mode is NOT used much anymore. We will not focus on it.
```

## PFET (PMOSFET)

![[Electronics - Week 10 Day 1 2024-04-01 13.25.52.excalidraw]]

```ad-note
Fusing a PMOS and an NMOS together creates a CMOS (Complementary MOSFET). This is why there is a p-type substrate that sandwhiches the p-type well
```

**For the PFET, we need:**

$$V_{GS} < 0$$
$$V_t < 0$$
$$V_{DS} < 0$$
$V_{GS} \le V_t$ to form a channel
$V_{DS} \le V_{GS}-V_t$ for *saturation*

---
*To AVOID negative values:

$$V_{SG} \ge |V_t| \rightarrow \mbox{to form channel}$$
$$V_{SD} \ge V_{SG} - |V_t| \rightarrow \mbox{For Saturation}$$
```ad-note
$I_D$ flows from Drain to Source in PFETs
```
**Transconductance Parameter for PFETs**
$$K_P^\prime = \mu_p C_{ox} = (\mbox{Mobility of Holes}) \frac{\mbox{Gate Oxide Capacitance}}{\mbox{Unit Area}}$$

*Comparing Both Parameters*:

$$\mu_n \approxeq (2 \to 4) \mu_p$$
$$K_N^\prime = (2 \rightarrow 4)K_P^\prime$$
```ad-important
$\therefore$ NFET generates larger values of $I_D$ than PFETs
```

## PFET Equations

**Cutoff:** $I_D = 0$

**Triode**: $I_D = K_P^\prime \frac{W}{L}[(V_{SG}-|V_t|)V_{SD} - \frac{1}{2}V_{SD}^2]$

**Saturation**: $I_D = \frac{K_p^\prime}{2} \frac{W}{L} (V_{SG}-|V_t|)^2$

*Boundary Condition*: $V_{SD} = V_{SG} - |V_t|$

```ad-note
You can use the same equations for NFET as did for PFET, there will just be negative numbers for $V_{GS}$ and $V_t$:
$$\frac{1}{2}K_P^\prime \frac{W}{L} (V_{SG} - |V_t|)^2 \equiv \frac{1}{2} \frac{W}{L}(V_{GS}-V_t)^2$$
```

# Summary

| NFET                                 | PFET                                        |
| ------------------------------------ | ------------------------------------------- |
| (ON): $V_{GS} > V_t$                 | ON: $V_{SG} > \|V_t\|$                      |
| (Saturation): $V_DS \ge V_{GS} -V_t$ | (Saturation): $V_{SD} \ge V_{SG} - \|V_t\|$ |
| $V_{GS} > V_t$                       | $V_{SG} > \|V_t\|$                          |
| (Triode): $V_{DS} < V_{GS} - V_t$    | (Triode): $V_{SD} < V_{SG} - \|V_t\|$       |



