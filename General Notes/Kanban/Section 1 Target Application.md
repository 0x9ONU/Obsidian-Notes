Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
#hwsw 

```ad-summary
First, suggest three target applications for the SBC. For each application, explain:

- The key features of the SBC that make it suitable for the target application.
- The performance and I/O requirements needed for the application.
- Consider how the board size and component density may impact the application. For example, would the board need to be compact for integration into a smaller device?
```

As the client has requested and being a consultant for their new single-board computer (SBC), three target applications for the final SBC are needed to market the chip to a specific audience. However, before getting deep into the details of the hardware, the hardware that must be included in the final product needs to be discussed. The FPGA is the focal-point of the board due to it’s re-programmable hardware and is required as it is a part of the ZedBoard [1-2]. Specifically, Xilinx’s Zynq-7000 SoC is used, which contains configurable logic blocks (CLBs) with LUTs, flip-flops, adders, Block RAM, DSP Slices, Programmable I/O, PCIe Gen2, Serial Transceivers, and 12-bit XADC (Analog-to-Digital Converter) [3-4]. Additionally, a general purpose CPU, the ARM Cortex A9, is provided for the main contributions and control for the board [5]. Figure 1 below shows the architectural overview of the Zynq-7000 SoC

![[Pasted image 20250510140330.png | center]]
<center> <b> Figure 1 </b>: Architectural Overview of the Zynq-7000 SoC [3]</center>

Since the rest of the board is up to interpretation, a set of applications must be chosen. In the current technology landscape, digital signal processing for high data loads has become a mainstay for automotive, Internet of Things, and artificial intelligence [6-7]. Therefore, the three main applications for this chip will be as follows: a digital signal processing suite for high-speed analog applications, an artificial intelligence hardware accelerator for IoT devices, and an embedded processor for automobile smart systems. To accomplish these goals, the CPU and the FPGA will be gaining two more main components: a tensor processing unit (TPU) and a digital signal processor (DSP). In particular, the Coral Accelerator Module by Google is chosen to be the AI acceleration module of choice due to it’s open-source nature, availability, and cost [8]. It is able to perform 4 TOPS at it’s peak performance and run TensorFlow models directly on the chip. Additionally, the DSP of choice will be a Texas Instrument chip called the AM62D Sitara, which contains a set of DSP matrix-multiplication accelerators and DSP blocks that can calculate around 40GFLOPS of information [9]. The main CPU will act as a controller for the TPU and the DSP so that it can be used to interact with the user with the input/output handling and can help schedule the tasks on both of the chips. However, both of these chips are on the lower end for both DSP and AI processing, which means using them in conjunction may not be good enough on their own. Therefore, I propose that the FPGA, having re-programmable DSP slices, logic, I/O, and ADCs can be utilized as a hardware accelerator for the DSP and the TPU at the same time. In particular, the CLBs and built DSP blocks can be used to increase the number of Multiply-Accumulate (MAC) operations for the TPU [7]. Additionally, an FPGA can provide custom DSP slices that can be programmed on the fly depending on the task running [10-11]. Combining all these features together creates a robust board that can efficiently take in large sums of data and perform fast AI computations on them while having the flexibility of the FPGA to accelerate either the TPU or the CPU. To keep the I/O and performance simple for the explanation of the system, we will assume that only the bare minimum is needed. A set of GPIO will be used by the CPU for user input alongside any necessary ports for a small graphical output. A set of analog inputs will be provided thanks to the DSP as well. Figure 2 illustrates a top-level sketch of the potential SBC:

![[Section 1 Target Application 2025-05-10 12.43.16.excalidraw | center]]
<center> <b> Figure 2 </b>: Proposed Programmable Single-Board Computer (SBC) For FPGA Hardware-Accelerated Machine Learning and Mixed Signal Processing</center>

