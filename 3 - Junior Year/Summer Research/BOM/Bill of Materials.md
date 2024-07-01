
# Summary
- Staircase DAC
- 8-to-1 MUX
- NMOS Transistor

# 8-to-1 MUX

## TI MUX50x

36-V, Low-Capacitance, Low-Charge-Injection, Precision, Analog MUXs

Features:
- Low On-Capacitance:
	- $9.4pF$ for the 508
	- $6.7pF$ for the 509
- Low Input Leakage: $10 pA$
- Low Charge Injection: $0.3 pC$
- Rail-to-Rail Operation’
- Supply Range: $\pm 5$ to $\pm 18V$, $10V$ to $36V$
- Low On-Resistance: $125 \Omega$
- Transition Time: $92 ns$Break-Before-Make Switching Action
- EN Pin Connectable to $V_{DD}$
- Low Supply Current $45 \micro A$
- ESD Protection HBM: $2000 V$

| Product | Description                                                      |
| ------- | ---------------------------------------------------------------- |
| MUX508  | 8-Channel, single-ended analog mux (8:1)                         |
| MUX509  | 4-channel differential or dual 4:1 single-ended analog mux (8:2) |
![[Pasted image 20240701100206.png]]

| Pin     | Type                   | Description                                                                                                                                                                                                                                                                 |
| ------- | ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A0, 1   | Digital Input          | Address Line 0                                                                                                                                                                                                                                                              |
| A1, 2   | Digital Input          | Address Line 1                                                                                                                                                                                                                                                              |
| A2,2    | Digital Input          | Address Line 2                                                                                                                                                                                                                                                              |
| D, 8    | Analog Input or Output | Drain Pin. Can be input or output                                                                                                                                                                                                                                           |
| EN,2    | Digital Input          | Active high digital input. When this pin is low, all switches are turned off. When this pin is<br>high, the A[2:0] logic inputs determine which switch is turned on.                                                                                                        |
| GND, 14 | Power Suply            | Ground (0 V) Reference                                                                                                                                                                                                                                                      |
| S1, 4   | Analog input or output | Source pin 1. Can be input or Output                                                                                                                                                                                                                                        |
| S2, 5   | Analog Input or Output | Source pin 2. Can be input or output                                                                                                                                                                                                                                        |
| S3, 6   | Analog Input or Output | Source pin 3. Can be input or output                                                                                                                                                                                                                                        |
| S4, 7   | Analog Input or Output | Source pin 4. Can be input or output                                                                                                                                                                                                                                        |
| S5, 12  | Analog Input or Output | Source pin 5. Can be input or output                                                                                                                                                                                                                                        |
| S6, 11  | Analog Input or Output | Source pin 6. Can be input or output                                                                                                                                                                                                                                        |
| S7, 10  | Analog Input or Output | Source pin 7. Can be input or output                                                                                                                                                                                                                                        |
| S8, 9   | Analog Input or Output | Source pin 8. Can be input or output                                                                                                                                                                                                                                        |
| VDD, 13 | Power supply           | Positive power supply. This pin is the most positive power-supply potential. For reliable operation, *connect a decoupling capacitor ranging form $0.1\micro F$ to $10 \micro F$ between VDD and GND.*                                                                      |
| VSS, 3  | Power supply           | Negative power supply. This pin is the most negative power-supply potential. In single-supply applications, this pin can be connected to ground. *For reliable operation, connect a decoupling capacitor ranging from $0.1 \micro F$ to $10 \micro F$ between VSS and GND.* |
![[Pasted image 20240701101137.png]]

```embed
title: "mux508.pdf?ts=1719841864035"
image: "data:image/jpeg;base64,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"
description: "ADC"
url: "https://www.ti.com/lit/ds/symlink/mux508.pdf?ts=1719841864035&ref_url=https%253A%252F%252Fwww.mouser.com%252F"
```

## Analog ADG5208/5209
\
High Voltage, Latch-Up Proof, 4-/8-Channel Multiplexers

Features
- Latch-up Proof
- $2.9 pF$ off source capacitance
- $34 pF$ off drain capacitance
- $0.2 pC$ charge injection
- Low on resistance: $160 \Omega$ typical
- $\pm 9V$ to $\pm 22V$ dual-supply operation
- $9V$ to $40V$ single-supply operation
- $48V$ supply maximum rating
- Fully specified at $\pm 15 V$, $\pm 20V$, $+12V$, and $+36V$
- $V_{SS}$ to $V_{DD}$ analog signal range

![[Pasted image 20240701101759.png]]

![[Pasted image 20240701101951.png]]

| TSSOP | LFCSP | Mnemonic    | Description                                                                                                                                                                               |
| ----- | ----- | ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1     | 15    | A0          | Logic Control Input                                                                                                                                                                       |
| 2     | 16    | EN          | Active High Digital Input. When low, the device is disabled and all switches are off. When high, the Ax logic inputs determine the on switches                                            |
| 3     | 1     | Vss         | Most Negative Power Supply Potential. In single-supply applications, this pin can be connected to ground.                                                                                 |
| 4     | 2     | S1          | Source Terminal 1. This pin can be an input or an output                                                                                                                                  |
| 5     | 3     | S2          | Source Terminal 2. This pin can be an input or an output                                                                                                                                  |
| 6     | 4     | S3          | Source Terminal 3. This pin can be an input or an output                                                                                                                                  |
| 7     | 5     | S4          | Source Terminal 4. This pin can be an input or an output                                                                                                                                  |
| 8     | 6     | D           | Drain Terminal. This pin can be an input or an output.                                                                                                                                    |
| 9     | 7     | S8          | Source Terminal 8. This pin can be an input or an output.                                                                                                                                 |
| 10    | 8     | S7          | Source Terminal 7. This pin can be an input or an output.                                                                                                                                 |
| 11    | 9     | S6          | Source Terminal 6. This pin can be an input or an output.                                                                                                                                 |
| 12    | 10    | S5          | Source Terminal 5. This pin can be an input or an output.                                                                                                                                 |
| 13    | 11    | Vdd         | Most Positive Power Supply Potential                                                                                                                                                      |
| 14    | 12    | GND         | Ground (0 V) Reference.                                                                                                                                                                   |
| 15    | 13    | A2          | Logic Control Input.                                                                                                                                                                      |
| 16    | 14    | A1          | Logic Control Input.                                                                                                                                                                      |
| NULL  | EP    | Exposed Pad | The exposed pad is connected internally. For increased reliability of the solder joints and maximum thermal capability, it is recommended that the pad be soldered to the substrate, Vss. |

| A2  | A1  | A0  | EN  | On Switch |
| --- | --- | --- | --- | --------- |
| X1  | X1  | X1  | 0   | None      |
| 0   | 0   | 0   | 1   | 1         |
| 0   | 0   | 1   | 1   | 2         |
| 0   | 1   | 0   | 1   | 3         |
| 0   | 1   | 1   | 1   | 4         |
| 1   | 0   | 0   | 1   | 5         |
| 1   | 0   | 1   | 1   | 6         |
| 1   | 1   | 0   | 1   | 7         |
| 1   | 1   | 1   | 1   | 8         |
## Analog ADG1608 $\star$

4.5 Ω R ON , 4-/8-Channel ±5 V, +12 V, +5 V, and +3.3 V Multiplexers

Features:
- $4.5 \Omega$ typical on resistance
- $1 \Omega$ on-resistance flatness
- Up to $470 mA$ continuous current
- $\pm 3.3V$ to $\pm 8V$ dual-supply
- $3.3V$ to $16V$ single-supply operation
- No $V_L$ supply required
- $3V$ logic-compatible inputs
- Rail-to-rail operation
- 16-lead TSSOP and 16-lead, 3mm x 3mm LFCSP

![[Pasted image 20240701104106.png]]

![[Pasted image 20240701104123.png]]

![[Pasted image 20240701104131.png]]

| A2  | A1  | A0  | EN  | On Switch |
| --- | --- | --- | --- | --------- |
| X1  | X1  | X1  | 0   | None      |
| 0   | 0   | 0   | 1   | 1         |
| 0   | 0   | 1   | 1   | 2         |
| 0   | 1   | 0   | 1   | 3         |
| 0   | 1   | 1   | 1   | 4         |
| 1   | 0   | 0   | 1   | 5         |
| 1   | 0   | 1   | 1   | 6         |
| 1   | 1   | 0   | 1   | 7         |
| 1   | 1   | 1   | 1   | 8         |

