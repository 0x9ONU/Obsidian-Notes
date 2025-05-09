Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** IBM

**DOI**: https://www.ibm.com/think/topics/neural-processing-unit

**Authors**: Josh Schneider, Ian Smalley

**Publication Year**: 2024

**Country of Study**: USA

**Tags**: #npu #neuralnetwork #ai #gpu

```ad-abstract
title: Abstract
collapse: open
A neural processing unit (NPU) is a specialized computer microprocessor designed to mimic the processing function of the human brain. They are optimized for artificial intelligence (AI) neural networks, deep learning and machine learning tasks and applications.
```

**Embed to Paper**: ![[What is a Neural Processing Unit (NPU).pdf]]

## Summary

### **What is a Neural Processing Unit (NPU)?**

A **Neural Processing Unit (NPU)** is a specialized microprocessor designed to mimic the human brain’s function, optimized for AI workloads including **neural networks**, **machine learning**, and **deep learning** tasks. Unlike CPUs and GPUs, NPUs are tailored to perform **scalar, vector, and tensor computations** efficiently, especially in **heterogeneous computing architectures** like system-on-chip (SoC) configurations in smartphones and laptops.

---

### **Key Features of NPUs**

NPUs are ideal for **low-latency, parallel computing tasks**, particularly in real-time AI applications:

- **Parallel processing:** Breaks down tasks for multitasking, enabling simultaneous neural network operations.
    
- **Low precision arithmetic:** Typically supports 8-bit (or lower) operations, enhancing energy efficiency.
    
- **High-bandwidth memory:** Designed to handle large datasets locally, accelerating performance.
    

---

### **How NPUs Work**

NPUs simulate **neurons and synapses** at the circuit level, enabling efficient execution of deep learning instructions:

- **Single-instruction, multi-neuron execution:** Unlike CPUs that require thousands of instructions, NPUs can compute neuron-like operations in one instruction.
    
- **Specialized Modules:** Include dedicated circuits for:
    
    - **Multiplication and addition** (e.g., for matrix multiplication, convolutions, dot products)
        
    - **Activation functions**
        
    - **2D data operations**
        
    - **Decompression**
        
- **Integrated memory and compute:** Uses **synaptic weights** to store values that adjust over time, improving learning and prediction capabilities.
    
- **Hardware acceleration:** Leverages **systolic arrays** and **tensor processing units (TPUs)** to increase throughput.
    

⚠️ **Performance Note**: Some NPUs demonstrate **100× efficiency** over GPUs for the same power usage.

---

### **Key Advantages of NPUs**

While not meant to replace CPUs or GPUs, NPUs provide critical enhancements:

1. **Superior parallelism**: Optimized structure allows higher efficiency than GPUs in certain AI operations.
    
2. **Energy efficiency**: Achieves high throughput with significantly less power.
    
3. **Multimedia and real-time AI**: Ideal for vision, speech, and object recognition applications.
    
4. **Compact footprint**: Suits edge computing and embedded systems where space and power are limited.
    

---

### **NPUs vs. GPUs vs. CPUs**

|Processor|Function|Characteristics|
|---|---|---|
|**CPU**|General-purpose|Linear execution, few cores, cache-heavy|
|**GPU**|High-performance, parallel|Many cores, great for graphics and AI, power-intensive|
|**NPU**|AI-optimized|Simulates brain neurons, efficient parallelism, low latency and power|



