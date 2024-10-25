Date: 25th October 2024
Date Modified: 25th October 2024
File Folder: Week 9
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Countermeasures to Physical Attacks

```ad-summary
The countermeasures for these physical attacks include:
1. Bus Enryption
2. Top-Layer Sensor Meshes
3. ASICs and custom ICs
4. Internal Voltage and Clock Frequency Sensors
5. Light Sensor
```

## Bus Encryption

```ad-summary
title: Definition
**Bus Encryption**: Used to proetect the sensitive information from probing
```

- Basically, the memory content is encrypted and then sent to the CPU by data bus
- Before the data used in CPU, it is decrypted

![[Pasted image 20241025141945.png]]

### Bus Scrambling

Since busses are usually probed, it is assumed that the bus order is always either big-endian or little-endian


**Data bus scrambling is used to confuse attackers**:
- Order of the data bus is changed to make it difficult to observe bus signals
- Many smart cards have scrambled internal memory bus
- They are arrange randomly and swapped several times. They can even be placed on different layers

![[Pasted image 20241025142344.png]]

![[Pasted image 20241025142337.png]]

```ad-warning
Is weak once the scramble is found. Difficult to change
```

## Sensors

Voltage and frequency sensors against glitching attacks

Light sensor can be helpful against decapsulation attacks

**Special purpose sensors**:
- Ring oscillator based detection (probing attempt detector)
- A probe will create a huge capacitance on a ring oscillator, which will dramatically change the switching speed and ultimately the frequency of the clock. Can be compared and detected.
- Placed on the bus lines to stop probing of it.
- Can raise a flag when detected

![[Pasted image 20241025143650.png]]



