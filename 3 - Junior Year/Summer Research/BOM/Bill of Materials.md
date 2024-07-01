
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

```embed
title: "ADG1608_1609-1502983.pdf"
image: "https://www.mouser.com/favicon.ico"
description: "4.5 Ω RON, 4-/8-Channel"
url: "https://www.mouser.com/datasheet/2/609/ADG1608_1609-1502983.pdf"
```

```embed
title: "76920"
image: "https://www.digikey.com/maintenance_pages/mobile-robot-2.png"
description: "px-captcha"
url: "https://www.digikey.com/en/products/base-product/analog-devices-inc/505/ADG1608/76920"
```

# Better NMOS

## Philips BSH103 $\star$

N-channel enhancement mode MOS transistor 

Features:
- Very Low Threshold
- High-Speed switching
- No secondary breakdown
- Direct interface C-MOS, TTL, etc.

![[Pasted image 20240701110006.png]]

**Quick Reference Data**

| Symbol     | Parameters                         | Conditions                   | Min | Max     | Unit     |
| ---------- | ---------------------------------- | ---------------------------- | --- | ------- | -------- |
| $V_{DS}$   | Drain-source Voltage (DC)          |                              | -   | 30      | V        |
| $V_{SD}$   | Source-Drain Diode Forward Voltage | $V_{GD} = 0$, $I_S=0.5A$     | -   | 1       | V        |
| $V_{GS}$   | Gate-Source Voltage (DC)           |                              | -   | $\pm 8$ | V        |
| $V_{GSth}$ | Gate-Source Threshold Voltage      | $V_{DS} = V_{GS}$, $I_D=1mA$ | 0.4 | -       | V        |
| $I_D$      | Drain Current (DC)                 | $T_S = 80 \degree C$         | -   | 0.85    | A        |
| $R_{DSon}$ | Drain-Source on-state Resistance   | $V_{GS}=2.5V; I_D = -.5A$    | -   | 0.5     | $\Omega$ |
| $P_{tot}$  | Total Power Dissipation            | $T_S=80 \degree C$           | -   | 0.5     | W        |
![[Pasted image 20240701111220.png]]

![[Pasted image 20240701111233.png]]

```embed
title: "1155054"
image: "https://www.digikey.com/maintenance_pages/mobile-robot-2.png"
description: "px-captcha"
url: "https://www.digikey.com/en/products/detail/nexperia-usa-inc/BSH103-215/1155054"
```

## Vishay Siliconix Si2328DS

N-Channel 100 V (D-S) MOSFET

Features:
- 100% $R_G$ and UIS Tested
- TrenchFET Power MOSFET
- Compliant to RoHS Directive

![[Pasted image 20240701112518.png]]

![[Pasted image 20240701112526.png]]

![[Pasted image 20240701112532.png]]

![[Pasted image 20240701112606.png]]

```embed
title: "1656353"
image: "https://www.digikey.com/maintenance_pages/mobile-robot-2.png"
description: "px-captcha"
url: "https://www.digikey.com/en/products/detail/vishay-siliconix/SI2328DS-T1-E3/1656353"
```

## Onsemi 2N7002

N-Channel Enhancement Mode Field Effect Transistor

![[Pasted image 20240701113332.png]]

Features:
- High density cell design for Low $R_{DS(on)}
- Voltage Controlled Small Signal Switch
- Rugged and Reliable
- High Saturation Current Capability
- ESD Protection Level: HBM > 100V, CDM > 2kV

![[Pasted image 20240701113552.png]]

![[Pasted image 20240701113651.png]]

![[Pasted image 20240701113756.png]]

# Staircase ADC

## MCP4725 $\star$
Features:
- 12-Bit Resolution
- On-Board Nonvolitle Memory (EEPROM)
- $\pm 0.2$ LSB DNL (typical)
- External A0 Address PIn
- Normal or Power-Down Mode
- Fast Settling Time: $6 \micro s$
- External Voltage Reference $V_{dd}$
- Rail-to-Rial Output
- Low Power Consumption
- Single supply operation: $2.7V$ to $5.5V$
- $400kHz$ push rate

![[Pasted image 20240701123142.png]]

![[Pasted image 20240701123150.png]]

![[Pasted image 20240701123210.png]]

```embed
title: "MCP4725-12-Bit-Digital-to-Analog-Converter-with-EEPROM-Memory-DS20002039.pdf"
image: "data:image/png;base64,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"
description: " 2007 - 2023 Microchip Technology Inc. and its subsidiaries"
url: "https://ww1.microchip.com/downloads/aemDocuments/documents/APID/ProductDocuments/DataSheets/MCP4725-12-Bit-Digital-to-Analog-Converter-with-EEPROM-Memory-DS20002039.pdf"
```

```embed
title: "YouTube"
image: "https://img.youtube.com/vi/SgPbzAWIwlk/maxresdefault.jpg"
description: "Share your videos with friends, family, and the world"
url: "https://www.youtube.com/watch?v=SgPbzAWIwlk"
```

```ad-warning
Due to its low max current, it cannot be used as a supply voltage and only as a reference voltage. An op-amp voltage follower will be used to overcome it
```

