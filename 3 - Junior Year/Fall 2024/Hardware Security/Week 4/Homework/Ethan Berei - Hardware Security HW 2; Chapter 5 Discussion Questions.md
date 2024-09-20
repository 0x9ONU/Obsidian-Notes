## Question 1: Semiconductor Industry Shift to Horizontal Business Model

```ad-question
Describe the motives of the semiconductor industry to shift to a horizontal business model and how the horizontal business model introduces the risk of hardware Trojan insertion
```

Before discussing how the horizontal business model affects the semiconductor industry, it is important to describe how the typical life span of a standard semiconductor goes through before it hits the market. On a computer, the creator would make a model of the semiconductor using a *hardware descriptive language* (HDL) to describe the functions of the chip. Then, the HDL is synthesized into small components and is typically done down to the gate level. Then, these components are laid out during the placement step. This step is where the physical synthesized model is placed into different cells on a chip. Then, the pieces are routed together to create the electrical traces between them. After that, the design is sent to a fabrication plant for them to be made, tested, and then loaded with the proper firmware before its packaged and sent to the customer.

When integrated circuits were first made by semiconductor companies, typically every step of the way was done through the vertical integration model. When a company is vertically integrated, it has its hands in making the product from the start to the finish. A company that is 100% vertical would make every single part in their factories and put it together by themselves. However, in the opposite sense, a horizontal integration is when a company starts to use other third party companies to design/make some of a product. For example, a company might choose to outsource the work to manufacture an integrated circuit after it has been fully laid out and routed. In the U.S. specifically, the fabless business model has grown by 16% in the industry as the amount of money being spend on creating leading edge semiconductor manufacturing capability has fallen dramatically. The main motives for switching towards a nearly fabless business model was due to profit margins. As plants opened up in places China, it was cheaper to send off fabrication oversees. Additionally, as more and more companies moved out of the country for fabs, other parts of the business moved out of convenience. The synthesis and placement has started to move towards being third party as well and even some designed are made out-of-house. Today, there are also more motives to *not* move back into a vertical design. Primarily, it is too difficult for the companies to move back in house. For example, it costs around $3 billion to build a full-scale fabrication today, which most companies would not cough up if they can keep printing ICs abroad. Secondly, the time it takes to build fabs back costs the company a lot of time. For instance, the Intel plant in Columbus has been in progress for many years and is still not open for business for today. Overall, it is very risky for a company to have their own fabs due to the path they went down in the past.

A risk of hardware Trojans increases due to the horizontal business models for multiple reasons. Firstly, trusting a third party company to either design, fabricate, or even manufacture/test chips has a chance of being untrusted. Due to this worldwide IC chain, multiple companies might all have their own part in the chip. Often, if any of these companies choose to, they can implant a Trojan into the hardware system. For example, a fab across the seas might choose to add a Trojan into the empty cells of a chip right before it goes into the testing and manufacturing process, which might not be seen by the original company either. This heterogeneity in the market makes it so even trivial parts of the process, like the fabrication or the masking, to be subject to hardware Trojans. 

## Question 2: Potential Adversaries

```ad-question
Who are the potential adversaries to implant a hardware Trojan? Provide a brief description on each of them. In your opinion, which is the most difficult to defend?
```

When a hardware Trojan is suspected to be planted, there are multiple different adversaries that might have caused the issue. Specifically, three main categories are to blame: the SoC Designer(s), the third party IPs (3PIP), and the foundry. As a designer, they have access to the IP itself, the cells that can be added, the models, and can even sometimes tweak the design specifications of the design. At the designer level, this is often the easiest to defend against as a company typically has someone experienced do this part. However, if a designer does choose to put a hardware Trojan in this part, it is the most difficult to stop as it trickles down into the other sections of the process and can *even* be written into the design specifications. On the other hand, 3PIPs are also a danger to exploiting hardware. Typically at any level of the process, a company may choose to hire another company to work on part of the chip as it goes through its development and manufacturing. Even though this practice has been normalized in the industry, it can be very dangerous. With only minimal effort, a 3PIP might try to either steal the IP or implant a Trojan for their benefit. Unlike the SoC designer, these 3PIP are harder to track and are more sneaky. However, since they do not have as much access to the design, the Trojan will typically appear later on. Another weak point along the process is the fabrication foundry. At this point, this is where the chips are physically cut out of silicon and put into their SoC package. If a designer was not keen, a malicious fab can use any extra space they left behind to put their own Trojan before it heads into the testing phase. Unlike the other phases, this phase has the least control over what the Trojan can do as it is relying on the layout given to them by the previous phases. However, since it is so late in the process, it can often slip if proper testing is not done during the authentication and package testing phases of the products lifespan. Out of the three, I believe that the SoC designer being malicious is the most dangerous since they can actively change anything in the design before it goes to the fabrication process without much repercussions. 

## Question 3: Generic Trojan Structure

```ad-question
Provide a brief description of a generic Trojan structure.
```

Nearly every hardware Trojan’s structure is based on three main characteristics: physical, activation, and action. A Trojan’s physical characteristics are anything that describes how the Trojan looks and how it was implemented on the chip. This category can be further broken down into type, size, distribution, and structure. The Trojan’s activation characteristic describes what conditions must be present for the Trojan to activate. This typically means that Trojans will either activate after a long period of time due to the chosen activation method being probabilistically unlikely, or when the Trojan detects a specific event, such as a high temperature or a remote-detonation. Linked to the activation, the action characteristic of the Trojan describes exactly what happens when the Trojan is activated. These effects can range from just killing the chip to leaking the cryptographic information from a chip. With these characteristics, countless Trojan variations can be made and tuned to the specs of the specific board used.

## Question 4: Combinational vs. Sequential

```ad-question
Describe the difference between a combinational and a sequential Trojan.
```

When initially looking at both combinational and sequential Trojans, they both seem similar in how they activate. They both take advantage of highly unlikely events that will then cause a payload unexpectedly for the victim. However, the ways they cause these unlikely events differs from combinational and sequential Trojans. Combinational focuses on putting a trigger and a payload on a certain area and makes it so that it triggers only after an unlikely set of inputs becomes true. For instance, a Trojan creator might steal digital signals from different parts of the board and put them in a sequence of AND gates that cause a Trojan to trigger only when all the inputs are true. On the other hand, sequential uses either a counter or a small finite state machine (FSM) to keep track of a sequence of events that happens to trigger a Trojan. For instance, a finite state machine may be used to activate a Trojan if a user decides to get a certain message, open that message, and delete it. Otherwise, in the case of finite state machines, they will often just jump back to the base condition and wait for that combination of events to happen again.

## Question 5: Cryptomodule Trojan

```ad-question
Provide an example of hardware Trojan in a cryptomodule.
```

The most prolific example of the hardware Trojan against a cryptomodule is the Malicious Off-Chip Leakage Enables by Side-channels attack (MOLES). In MOLES, the attack will add a side-channel onto a chip that will allow the attackers to gain a cryptographic key or other important information that can be used to crack the system. For instance, the key to a cryptomodule can be stolen and XORed with a PRNG to create a pseudo-random signal that can be collected from the outside. Then the inverse of the PRNG can be taken to get back the hardware key. 

## Question 6: ASIC vs. FPGA Trojans

```ad-question
Give a comparison of hardware Trojans in ASIC and FPGA designs.
```



## Question 7: Hardware Trojan Taxonomy

```ad-question
Illustrate the hardware trojan taxonomy and classify them based on activation mode and payload.
```

## Question 8: Trojan Countermeasures

```ad-question
Illustrate the taxonomy of Trojan countermeasures
```



