Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** Intel

**DOI**: https://arxiv.org/pdf/2204.10943

**Authors**: Rui Ma, Evangelos Georganas, Alexander Heinecke, Andrew Boutros, Eriko Nurvitadhi

**Publication Year**: 2022

**Country of Study**: USA

**Tags**: #ai #fpga #communication #NIC #dnn #gpu

```ad-abstract
title: Abstract
collapse: open
Training state-of-the-art artificial intelligence (AI) models requires scaling to many compute nodes and relies heavily on collective communication operations, such as all-reduce, to exchange the weight gradients between nodes. The overhead of these operations can bottleneck training performance as the number of nodes increases. In this paper, we first characterize the all-reduce operation overhead. Then, we propose a new smart network interface card (NIC) for distributed AI training using field-programmable gate arrays (FPGAs) to accelerate all-reduce operations and optimize bandwidth utilization via data compression. The AI smart NIC frees up the system's compute resources to perform the more compute-intensive tensor operations and increases the overall node-to-node communication efficiency. We build a prototype 6-node AI training system and show that our proposed FPGA-based AI smart NIC enhances overall training performance by 1.6×, with an estimated 2.5× performance improvement at 32 nodes.
```

**Embed to Paper**: ![[FPGA-based AI Smart NICs for Scalable Distributed AI Training Systems.pdf]]
## Summary

### Introduction

### Background

### Profiling Distributed AI Training

### FPGA-Based AI Smart NIC

### Evaluation