Date: 7th April 2025
Date Modified: 7th April 2025
File Folder: Week 11
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Gate Capacitance

## Introduction

Because a transistor gate is a good insulator, it can be model as a capacitor, $C$
- When it is ON, some current $I$ flows between source and drain
- Both the current and capacitance are proportional to the transistor width
- In digital circuits, the speed of operation of the logic gate impacts the frequency of operation of circuit

The delay of a logic gate is determined by the current that it can deliver and the capacitance that it is driving

Charge and discharge according to the constitutive equation:

$$I = C \frac{dV}{dt}$$

If an average current $I$ is applied, the time $t$ to switch between $0$ and $V_{DD}$ is:

$$t = \frac{C}{I} V_{DD}$$

So far, we have treated transistors as ideal switches

An ON transistor passes a finite amount of current
- Depending on terminal voltages
- Derives current-voltage (I-V) relationships

Transistor gate, source, drain all have capacitance:

$$I = C(\Delta V/\Delta t) \to \Delta t = (C/I)\Delta V$$
## MOS Capacitor

Gate and body form MOS capacitor

**Modes**:
1. Accumulation

![[Pasted image 20250407111009.png]]

2. Depletion

![[Pasted image 20250407111018.png]]

3. Inversion

![[Pasted image 20250407111045.png]]

## Terminal Voltages & Modes

Mode of operation depends on $V_g$, $V_d$, and $V_s$
- $V_{gs} = V_g - V_s$
- $V_{gd} = V_g - V_d$
- $V_{ds} = V_d-V_s = V_{gs}-V_{gd}$

- Source and drain are symmetric diffusion terminals
- nMOS body is ground

**Three Regions of Operation**:
- Cutoff
- Linear
- Saturation

### Cutoff

No channel is created and $I_{ds} \approxeq 0$

![[Pasted image 20250407111245.png]]

### Linear

A channel forms where current flows from $d$ to $s$
- $I_{ds}$ increases with $V_{ds}$
- Similar to linear resistor

![[Pasted image 20250407111321.png]]

$I_{ds}$ depends on:
- How much charge is in the channel?
- How fast is the charge moving?
### Saturation

Channel that was formed begins to be pinched
- $I_{ds}$ independent of $V_{ds}$
- We say current *saturates*
- Similar to current source

![[Pasted image 20250407111431.png]]

## Channel Charge

MOS structure looks like parallel plate capacitor while operating in inversion

$$Q_{channel} = CV$$
$$C = C_g = \epsilon_{ox} WL/t_{ox}=C_{ox}WL \quad \mbox{Where} \space C_{ox} = \epsilon_{ox}/t_{ox}$$
$$V=V_{gc}-V_t=(V_{gs}-V_{ds}/2) -V_t$$
![[Pasted image 20250407111906.png]]

$$C_g = k_{ox}\epsilon_o\frac{WL}{t_{ox}}=\epsilon_{ox}\frac{WL}{t_{ox}}=C_{ox}WL$$

## Carrier Velocity

Charge is carrier by $e^-$. Electrons are propelled by the lateral electric field between source and drain

$$-E = V_{ds}/L$$

Carrier velocity $v$ is proportional to the lateral E-field

$$-v = \mu E$$

Time for carrier to cross the channel:

$$-t=L/v$$
## nMOS Linear I-V

Now we know:
- Charge on the channel
- how much time $t$ each carrier takes to cross

$$I_{ds} = \frac{Q_{channel}}{t}$$
$$=\mu C_{ox}\frac{W}{L}(V_{gs}-V_t-\frac{V_{ds}}{2})V_{ds}$$
$$=\beta (V_{gs} -V_{t} - \frac{V_{ds}}{2})V_{ds} \quad \mbox{Where} \space \beta = \mu C_{ox} \frac{W}{L}$$

## Summary

![[Pasted image 20250407113207.png]]

![[Pasted image 20250407114007.png]]


