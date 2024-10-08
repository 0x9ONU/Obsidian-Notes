
## Question 1: Side-Channel Analysis Overview

```ad-question
Describe the main idea of side-channel analysis
```

When it comes to classical cryptography, typically systems were secured using mathematical abstractions and secured using software techniques that would be typically impossible to crack via its interface. However, physical attacks completely exploit the hardware implementation used to keep secret keys. Side-channel analysis observes physical quantities from the device to try and gain additional information around a cryptomodule. This allows for attackers to “bypass” part of the algorithm’s math and compare values to try and either gain the whole key or reduce the “key pool” of possibilities.


## Question 2: Gains from Side-Channel Attack

```ad-question
What information can be gained when successfully applying a side channel attack?
```

When successfully applying a side-channel attack, the attackers can gain secret information that they would otherwise not have. It takes advantage of Kerckoffs’ Assumption, which assumes that all the data required to operate a chip is hidden in only the key. In the case of a brute force attack, it can be used to reduce the amount of keys it tries until it gets the correct answer, aka reduce the key space. If an algorithm has a low key sensitivity, this could be a nearly automatic crack for the attacker. By combining both the physical output and the hypothetical output, the two can be mirrored until the original key is found, which can completely break strong cryptosystems such as AES and DES.

## Question 3: Invasive vs. Non-invasive

```ad-question
Explain what an invasive attack is and what a non-invasive is.
```

When trying to gain potential side-channel access, there are two ways to get a chip’s readings: invasive and non-invasive. Non-invasive attacks use environmental conditions that are not guarded to try and infer secrets from a chip. This list of conditions includes: voltage, glitches in the system, the clock signal, temperature, ultraviolet spectrographs, light, and x-rays. This allows an attacker to potentially gain critical information about a chip without any direct tampering with the chip necessary. It can preserve the chip unlike its counterpart that will be mentioned next. Invasive attacks, on the other hand, utilize exploits on a chip that can only be activated if provoked by physical stress. An example of an invasive attack includes a laser fault injection, where the attacker will apply a laser to a certain device or trace so it malfunctions and releases otherwise confidential information.

## Question 4: SPA and DPA

```ad-question
Explain what SPA is and what DPA is. What are the differences between them?
```

Simple power attacks, also known as SPA, is a type of side-channel attack that focuses on reading a devices power to try and deduce information about the data and operation of the device. Being the strongest against all cryptographic algorithms that rely on conditional branching based on a key’s value, SPA can be used to deduce secret keys for DES, AES, and RSA by keeping track of the power trace that keeps track of the exponentiation step of the process. SPA can be used to crack smart cards like modern day credit and debit cards by targeting its variable instruction flow. However, differential power analysis is the next level of SPA and focuses on data-dependence instead. It tries to tie the operand to the power fluctuations using two devices that are the same and have the same cryptographic algorithms. One device is what you know everything, including the key, for and the other’s key is unknown. This allows you to coordinate the power draw with different keys until the correct key is found. When comparing both attacks, the best analogy is to compare brute force to plain text attacks. Brute force attacks take must longer because the relation between the cipher text and the message is unknown, while the plain text attack knows the relation between the two. SPA, even though requires less work, takes much longer to do and typically fails at cracking the keys for stronger algorithms. However, DPA, if used properly, can crack even AES-128 in only 4096 tries ($4096 << 2^{128}$)!

## Question 5: Tools and Equipment for Power Analysis

```ad-question
Describe what tools and equipment are required to perform power analysis attacks.
```

Power analysis attacks, even though powerful, often do not need a lot of equipment that can often be found in most simple electronics labs. A cryptographic device is needed so it can be tested on as well as a decoupling capacitor and resistor to get a good reading. From there, a reading will be taken off of the resistor using an oscilloscope to see how the power changes based on the message/cipher text used. Additionally, a PC is often used to provide both the control ciphertext and/or messages as well as taking in waveform data and providing the oscilloscope with control data. The PC can then be used to provide any further calculations and analysis on the data to see if you find a key that breaks the code.

## Question 6: Protections against Power Analysis

```ad-question
Describe approaches of protecting a chip against power analysis attacks.
```

As stated in the lecture, there are 

## Question 7: EM Emanation

```ad-question
What is EM emanation and how is it used to apply EM analysis attacks?
```

## Question 8: Timing Attacks

```ad-question
Describe the main idea of timing attack and what tools are required to perform it
```

## Question 9: Side-Channel Countermeasures

```ad-question
How can side-channel attack counter meausres protect the device? How would these countermeasures affect the performance of the system?
```

## Question 10: FPGA vs. Microcontroller

```ad-question
How can an attacker perform side-channel attacks on parallel based systems such as FPGAs? And how different is it compared to microcontrollers?
```

## Question 11: EM Analysis in a Noisy Environment

```ad-question
Applying EM analysis to capture critical information can be tricky, many factors can affect the quality of the signal. What measures should the attacker take to successfully perfrom the attack in a noisy environment? And what are the pros and cons of applying EM analysis over power analysis in this case?
```

## Question 12: Random Delay

```ad-question
Analyzing the delay of the output of a device can be used to gain knowledge about the design, one countermeasure used is to randomize the delays every time an operation is performed. How can this random delay be implemented? What are the challenges that the designer may face when applying this countermeasure?
```