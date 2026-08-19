`Date: 1st December 2023
Date Modified: 1st December 2023
File Folder: Week 14
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Applications of Diodes
	- Half-wave Bridge
	- Full-wave Bridge
- Transistors

```

# Applications of Diodes

## Half-wave Rectifier

Make it so only POSITIVE VOLTAGE will have current flow

![[Circuits Week 14 - Day 3 2023-12-01 11.09.08.excalidraw]]

$$V_{in} = v(t) = V_m\sin wt \Rightarrow V_{out} = V_o = \frac{V_m}{\pi}$$
```ad-note
$$I_{peak} = \pi I_0$$
```
## Full-wave Rectifier

![[Circuits Week 14 - Day 3 2023-12-01 11.13.56.excalidraw]]

$$v_{in} = v(t) = V_m\sin wt \Rightarrow V_{out} = V_0 = \frac{2V_m}{\pi}$$

## Examples 

### Example 1: Half-Wave

```ad-question
Assuming ideal diode, detemrine the following for the half-wave rectifier:
1. The peak voltage across $R$
2. The average voltage across R
3. The rms voltage across R
4. The average current flowing thorugh R
5. The peak current flowing through R
6. The rms current flowing through R
7. The average power absorbed by R
![[Circuits Week 14 - Day 3 2023-12-01 11.20.57.excalidraw]]
```

1. Peak Voltage
$$V_{peak} = 170\sin(377(0)) = 170V$$

```ad-warning
If the diode is NOT ideal, then $$V_{peak} = 170 - (V_{drop \space by \space diode})$$
```
2. Average Voltage
$$V_o = \frac{V_{peak}}{\pi}=\frac{170}{\pi} = 54.11 V$$
3. Rms Voltage
$$V_{o \space rms} = \frac{1}{2}V_{peak} = 85 V$$
4. Average Current
$$I_0 = \frac{V_0}{R} = \frac{54.11}{6} = 9.018 A$$
5. Peak Current
$$I_{peak} = \frac{V_{peak}}{R} = \frac{170}{6} = 28.33 A$$
6. Rms Current
$$I_{rms} = \frac{1}{2}\frac{V_m}{R} = \frac{1}{2} I_m = \frac{1}{2}(28.33) = 14.165 A$$
7. Average Power Absorbed
$$P=\frac{V_{o \space rms}^2}{R}$$
$$P = \frac{85^2}{6} = 1204 \space W$$

# Bi-Polar Junction Transistors (BJTs)

![[Circuits Week 14 - Day 3 2023-12-01 11.41.11.excalidraw]]

















