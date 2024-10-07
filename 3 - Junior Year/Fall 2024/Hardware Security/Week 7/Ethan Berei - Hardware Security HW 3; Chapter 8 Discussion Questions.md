
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

When trying to gain potential side-channel access, there are two ways 

## Question 4: SPA and DPA

```ad-question
Explain waht SPA is and what DPA is. What are the differences between them?
```

## Question 5: Tools and Equipment for Power Analysis

```ad-question
Describe approaches of protecting a chip against power analysis attacks.
```

## Question 6: Protections against Power Analysis

```ad-question
Describe approaches of protecting a chip against power analysis attacks.
```

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