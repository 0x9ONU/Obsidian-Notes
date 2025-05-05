Date: 5th May 2025
Date Modified: 5th May 2025
File Folder: Kanban
## Publication Information

**Database:** ACM Digital Library

**DOI**: [https://doi.org/10.1145/581630.581668](https://doi.org/10.1145/581630.581668)

**Authors**: Andreas Weissel, Frank Bellosa

**Publication Year**: 2002

**Country of Study**: United States

**Tags**: #powermanagement #scheduling #clockscaling #eventcounters

```ad-abstract
title: Abstract
collapse: open

Scalability of the core frequency is a common feature of low-power processor architectures. Many heuristics for fre- quency scaling were proposed in the past to find the best trade-off between energy efficiency and computational per- formance. With complex applications exhibiting unpredict- able behavior these heuristics cannot reliably adjust the op- eration point of the hardware because they do not know where the energy is spent and why the performance is lost. 

Embedded hardware monitors in the form of event coun- ters have proven to offer valuable information in the field of performance analysis. We will demonstrate that counter values can also reveal the power-specific characteristics of a thread. In this paper we propose an energy-aware scheduling pol- icy for non-real-time operating systems that benefits from event counters. By exploiting the information from these counters, the scheduler determines the appropriate clock fre- quency for each individual thread running in a time-sharing environment. A recurrent analysis of the thread-specific en- ergy and performance profile allows an adjustment of the fre- quency to the behavioral changes of the application. While the clock frequency may vary in a wide range, the applica- tion performance should only suffer slightly (e.g. with 10% performance loss compared to the execution at the highest clock speed). Because of the similarity to a car cruise con- trol, we called our scheduling policy Process Cruise Control. This adaptive clock scaling is accomplished by the operating system without any application support. 

Process Cruise Control has been implemented on the In- tel XScale architecture, that offers a variety of frequencies and a set of configurable event counters. Energy measure- ments of the target architecture under variable load show the advantage of the proposed approach.
```

**Embed to Paper**: [[Process Cruise ControlEvent-Driven Clock Scaling for Dynamic Power Management.pdf]]

## Summary

### Introduction

#### Motivation

#### Challenge

#### Background

### Objective of Research

### Methodology

### Pros/Cons

#### Benefits

#### Disadvantages

### Conclusion

#### Results/Findings

#### Closing Remarks

### Future Works

### Discussion

