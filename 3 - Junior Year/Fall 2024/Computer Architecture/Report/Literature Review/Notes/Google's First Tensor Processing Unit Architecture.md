Date: 10th December 2024
Date Modified: 10th December 2024
File Folder: Notes
## Publication Information

**Database:** The Chip Letter

**DOI**: https://thechipletter.substack.com/p/googles-first-tpu-architecture

**Authors**: Babbage

**Publication Year**: 2024

**Country of Study**: United States

**Tags**: #architecture #tpu

```ad-abstract
title: Abstract
collapse: open

```

**Used in…**: Comparison

**Embed to Paper**: ![[thechipletter-subs....pdf]]

## Summary

### Introduction

Google aimed “to develop an Application Specific Integrated Circuit (ASIC) that would generate a 10x cost-performance advantage on inference when compared to GPUs”

*How did TPUs get their name*: They are designed to speed up operations involving **tensors**. 
- Includes operations between vectors, scalars, and other tensors
- i.e. a 2D array can describe a multilinear relationship between two one-dimensional arrays.
- TPUs specifically are made to perform vector and matrix operations with one and two-dimensional arrays

#### How does it apply to Neural Networks?

![[Pasted image 20241211204351.png]]

$$h11=f(x1 \times w11 \times x2 \times w21 +x3 \times w31)$$

The hidden and output layers are the results of applying the activation function to *each element of the vector*.
- To do this, each of the vector’s input values must be multiplied by the matrix of weights.
- This means that doing fast matrix multiplication is important for deciding which hidden node is chosen.

### TPU Architecture

```ad-important
TPUs do not need to store and fetch immediate results from a main memory. It instead makes them automatically avialble when needed.
```

*Simplest Form*

![[e9c87156-136a-4624-b0ae-1d94ed00db1b_1786x808.png]]

```ad-warning
Needs a PCIe interface with a host computer to be used.
```

*More Advanced form*

![[580cb2d4-9d80-4e87-9daf-c20b018f5c6d_1532x1172.jpg]]

**Key Features**:
- *DDR3 DRAM:* It is where the weights are stored. 
	- Transferred into the TPU using the DDR3-2133 interfaces.
	- Weights are loaded via the PCIe from the Host computer
	- Transferred into the *Weight FIFO* memory to be used 
- *Matrix Multiply Unit*: A systolic array with 256 x 256 matrix multiply/accumulate units that is fed by 256 ‘weight’ values from the top and 256 data inputs from the left
- *Accumulators*: The results emerge from the systolic matrix unit at the bottom and are stored
- *Activation*: The activation functions are described in the neural network above are applied here
- *Unified Buffer / Systolic Data Setup*: The result of the activation functions are stored in a ‘unified buffer’ memory where they are ready to be fed back as inputs to the MXU to calculate the values needed for the next layer

### Nature of the Multiply/Accumulate  (MACs)

TPU v1 utilizes 8-bit x 8-bit integer  multiplication, which makes use of quantization to avoid the need for more die-area-hungry floating-point calculations.

#### Instruction Set

Utilizes a CISC design with around only 20 instructions.
- Sent over the host computer over the PCIe interface rather than being read from memory.

**Five Key Instructions**:

1. `Read_Host_Memory`: Reads input values from the host’s memory into the Unified Buffer over PCIe
2. `Read_Weights`: Read weights from weight memory into Weight FIFO
3. `Matrix_Multiply/Convolve`: Implements the systolic array matrix multiply as well as convolution calculations for CNNs
4. `Activate`: Performs the nonlinear function of the artificial neuron, with options for ReLU, Sigmoid, and so on. Inputs from accumulators, and outputs to the unified buffer.
5. `Write_Host_Memory`: Writes results to the host computer’s memory from the Unified Buffer over PCIe

*Broad Pseudocode*:
```
Read_Host_Memory 
Read_Weights 
Loop_Start 
	Matrix_Multiply 
	Activate 
Loop_End 
Write_Host_Memory
```

### Fabrication and Die

- 28nm TSMC
- Half the die area of both Intel’s CPUs and Nvidia’s GPUs
- Low overhead for decoding (only 2% of the die)
- 24% reserved for the MMU
- 29% reserved for the unified buffer memory

![[d012f995-c456-4400-bfb5-7b7279509335_792x820.jpg]]

### Performance

- TPU v1 has 25 times as many MACs and 3.5 times as much as the K80 GPU
- 15x to 30x faster than the GPU and the Haswell CPU



