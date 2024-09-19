## Question 1: Semiconductor Industry Shift to Horizontal Business Model

```ad-question
Describe the motives of the semiconductor industry to shift to a horizontal business model and how the horizontal business model introduces the risk of hardware Trojan insertion
```

Before discussing how the horizontal business model affects the semiconductor industry, it is important to describe how the typical life span of a standard semiconductor goes through before it hits the market. On a computer, the creator would make a model of the semiconductor using a *hardware descriptive language* (HDL) to describe the functions of the chip. Then, the HDL is synthesized into small components and is typically done down to the gate level. Then, these components are laid out during the placement step. This step is where the physical synthesized model is placed into different cells on a chip. Then, the pieces are routed together to create the electrical traces between them. After that, the design is sent to a fabrication plant for them to be made, tested, and then loaded with the proper firmware before its packaged and sent to the customer.

When integrated circuits were first made by semiconductor companies, typically every step of the way was done through the vertical integration model. When a company is vertically integrated, it has its hands in making the product from the start to the finish. A company that is 100% vertical would make every single part in their factories and put it together by themselves. However, in the opposite sense, a horizontal integration is when a company starts to use other third party companies to design/make some of a product. For example, a company might choose to outsource the work to manufacture an integrated circuit after it has been fully laid out and routed. In the U.S. specifically, the fabless business model has grown by 16% in the industry as the amount of money being spend on creating leading edge semiconductor manufacturing capability has fallen dramatically. The main motives for switching towards a nearly fabless business model was due to profit margins. As plants opened up in places China, it was cheaper to send off fabrication oversees. Additionally, as more and more companies moved out of the country for fabs, other parts of the business moved out of convenience. The synthesis and placement has started to move towards being third party as well and even some designed are made out-of-house. Today, there are also more motives to *not* move back into a vertical design. Primarily, it is too difficult for the companies to move back in house. For example, it costs around $3 billion to build a full-scale fabrication today, which most companies would not cough up if they can keep printing ICs abroad. Secondly, the time it takes to build fabs back costs the company a lot of time. For instance, the Intel plant in Columbus has been in progress for many years and is still not open for business for today. Overall, it is very risky for a company to have their own fabs due to the path they went down in the past.

A risk of hardware Trojans increases due to the horizontal business models for multiple reasons. Firstly, trusting a third party company to either design, fabricate, or even manufacture/test chips has a chance of being untrusted. Due to this worldwide IC chain, multiple companies might all have their own part in the chip. Often, if any of these companies choose to, they can implant a Trojan into the hardware system. For example, a fab across the seas might choose to add a Trojan into the empty cells of a chip right before it goes into the testing and manufacturing process, which might not be seen by the original company either. This heterogeneity in the market makes it so even trivial parts of the process, like the fabrication or the masking, to be subject to hardware Trojans. 

## Question 2: Potential Adversaries

```ad-question
Who are the potential adversaries to implant a hardware Trojan? Provide a brief description on each of them. In your opinion, which is the most difficult to defned?
```

## Question 3: Generic Trojan Structure

```ad-question
Provide a brief description of a generic Trojan structure.
```


## Question 4: Combinational vs. Sequential

```ad-question
Describe the difference between a combinational and a sequential Trojan.
```

## Question 5: Cryptomodule Trojan

```ad-question
Provide an example of hardware Trojan in a cryptomodule.
```

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



