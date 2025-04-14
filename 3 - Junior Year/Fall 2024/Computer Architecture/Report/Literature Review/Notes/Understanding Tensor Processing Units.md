Date: 10th December 2024
Date Modified: 10th December 2024
File Folder: Notes
## Publication Information

**Database:** Online

**DOI**: https://www.geeksforgeeks.org/understanding-tensor-processing-units/

**Authors**: Geeks for Geeks

**Publication Year**: 2024

**Country of Study**: United States

**Tags**: #introduction #tpu #easy-to-read

**Used in…**: Introduction

**Embed to Paper**: ![[Understanding Tensor Processing Units - GeeksforGeeks.pdf]]

## Summary

### What is a Tensor Processing Unit?

A Google-developed AI accelerator integrated circuit to be used with the TensorFlow AI framework. It is used to overcome some of the lacking features of the parallel architecture of a GPU.

###  What is TensorFlow Framework

An open source library developed by Google. It contains:
- Machine learning
- Dataflow Programming

```ad-note
The name is derived by the multi-dimensional arrays, called "tenors", that neural networks perform on
```

### TPU Architecture

Includes the following:
- **Matrix Multiplier Unit (MXU)**: 65, 536 8-bit multiply-and-add units for matrix operations
- **Unified Buffer**: 24MB of SRAM that work as registers
- **Activation Unit**: Hardwired activation functions

![[tpu.png]]

*Five Major Instructions*

![[Pasted image 20241210174143.png]]

*Application Stack*:

![[stack-3.png]]

### Advantages of TPU

1. Accelerates the performance of *linear algebra* computation, which is the lifeblood of ML
2. Minimizes the time-to-accuracy ratio when you train neural networks

```ad-important
Large models can conferge in hours instead of weeks on TPUs
```

### When to use a TPU

1. Models dominated by matrix compuatations
2. No custom TensorFlow operations inside the main training loop
3. Models that train for weeks or months
4. Larger models with large effective batch sizes

