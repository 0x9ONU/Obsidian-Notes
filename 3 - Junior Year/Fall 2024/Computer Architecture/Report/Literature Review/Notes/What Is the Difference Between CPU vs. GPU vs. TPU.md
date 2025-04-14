Date: 10th December 2024
Date Modified: 10th December 2024
File Folder: Notes
## Publication Information

**Database:** premio

**DOI**: https://premioinc.com/blogs/blog/what-is-the-difference-between-cpu-vs-gpu-vs-tpu-complete-overview

**Authors**: Premio

**Publication Year**: 2021

**Country of Study**: United States

**Tags**: #tpu #cpu #gpu #comparison

**Used in…**: Comparison/Landscape

**Embed to Paper**: ![[premioinc-com-blog....pdf]]

## Summary

### Introduction

```ad-summary
- CPUs are best being the main backbone of a computer and for general-purpose processing
- GPUs are performance accelerators, specifically for graphics and AI workloads.
- TPUs are Google's custom-developed processors that accelerate machine learning workloads using TensorFlow.
```

```ad-important
CPUs are the most general, while TPUs are just dedicated computing hardware made exclusively to speed up the training time for TensorFlow-based ML and DL.
```
### Components

#### CPU

The general-purpose processor that has:
- A few powerful cores
- A large cache memory

```ad-example
Is like a conductor as it controls all the other components while not "playing" much themsevles
```

**Features**:
1. Several Cores
2. Low Latency
3. Serial Processing
4. Can do a handful of operations at once
5. Highest FLOPS utilization for RNNs
6. Support the largest model thanks to its large memory capacity
7. Much more flexible and programmable for irregular computations

#### GPU

A speicalized processor that works as a performance accelerator with the CPU.
- Thousands of cores that can break down complex problems 
- Works o thousands to mjllions of smaller tasks in parallel.

```ad-example
Uses for:
- Graphics processing
- Video rendering
- Machine leanring
- Mining Cryptocurrency
```

```ad-important
Essential for deep leanring development. They are able to do large matrix operations and perform mixed-precision matrix cacluations.
```

**Features**:
- Thousands of cores
- High throughput
- Specialized for parallel processing
- Capable of executing thousands of operations at once

#### TPU

Application-specific integrated circuits (ASICs) 
- Made by Google in 2015 and publicized in 2018
- Available on the cloud or smaller version as a dedicated chip

```ad-important
Incredibly fast at performing dense vector and matrix compuatations. Great for neural networks and machine learning built specifically for TensorFlow.
```

**TPUs Features Summary**:
1. Special Hardware for Matrix Processing
2. High Latency (compared to CPU)
3. Very High Throughput
4. Compute with Extreme Parallelism
5. Highly-optimized for large batches and CNNs (convolutional neural network)

### Manufactures of CPUs, GPUs, and TPUs

**CPU**:
1. Intel
2. AMD
3. Qualcomm
4. Nvidia
5. IBM
6. Samsung
7. Apple
8. Hewlett-Packard
9. VIA
10. Atmel

**GPU**:
- Nvidia
- AMD
- BROADCOM
- Imagination

**TPU**:
1. Google
2. Coral
3. HAILO

### When to use CPU, GPU, or TPU to Run Your Machine Learning Models?

**CPU**:
1. Prototypes that require the highest flexibility
2. Training simple models that do not require a long time
3. Training small models with small effective batch sizes
4. Mostly written in C++ based on custom TensorFlow operations
5. Models with limited I/O or limited system’s networking bandwidth

**GPU**:
1. Models that are too difficult to change or sources that do not exist
2. Models with numerous custom TensorFlow operations that a GPU must support
3. Models that are not available on Cloud TPU
4. Medium or larger size models with bigger effective batch sizes

**TPU**:
1. Training models using mostly matrix computations
2. Training models without custom TensorFlow operations inside the main training loop
3. Training Models that require weeks or months to complete





