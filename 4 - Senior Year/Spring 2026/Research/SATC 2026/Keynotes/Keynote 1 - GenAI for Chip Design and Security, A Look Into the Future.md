
```ad-summary
title: Author Information
**Mark Tehranipoor**
- ECE Department Chair at University of Florida
```

# Abstract

Designing functionally correct, high-performance, and provably secure system-on-chips (SoCs) has become a strategic imperative for modern computing infrastructure. However, escalating complexity, heterogeneous integration, and evolving security threats are pushing traditional design and verification methodologies beyond their practical limits. The emergence of large language models (LLMs) offers a transformative opportunity for SoC automation. Beyond code generation, LLMs enable architectural reasoning, specification refinement, vulnerability analysis, and design-space exploration. Yet chip design is inherently multidisciplinary and iterative, requiring more than a single monolithic model. An agentic paradigm-where specialized AI agents collaborate within a coordinated framework-enables modular reasoning, cross-layer verification, and adaptive security validation across the SoC lifecycle. This keynote introduces a multi-agent intelligent assistant system designed to automate and augment SoC design and security verification. By integrating synthesis, threat modeling, formal reasoning, runtime monitoring, and hardware-software co-verification, this framework moves us toward self-optimizing, security-aware, and continuously verified siliconredefining how next-generation microelectronic systems are conceived, built, and trusted.
# Introduction: GenAI as a New Frontier

## Gen AI Market - 2024

1. Datacenter GPUs: $115B
2. Foundations models & model management platforms: $11B

## Where are We Going?

```ad-tldr
Forecast: GenAI-related revenue grwoth from $93B in 2023 to $1.6T by 2032 with 37% CAGR.
- Most of it is on the backend for infrastructure
```

## GenAI in Chip Design and Security

```ad-warning
**The Cost of Chips is Rising**
- Chip design cost rises from $28M (65nm) to $540M (5nm)
- Attack surface is expanding with complexity, reducing efficiency and security
- GenAI targets the most labor-intensive stages of RTL development and verification
```

**Virtual Chip Engineers**:
- A specialized AI Agent that is made for designing SOCs and ICs
- Acts as a “digital colleague” within the engineering loop.
- Goal is to automate the most labor-intensive parts of chip design

*Design flow update:*
- Task-centric is the future of chip design
- Reshaping the EDA business model and chip design process

```ad-danger
In the future, we may see semiconductor companies need *fewer* employees (wowwww)
```

## Challenges of GenAI in Hardware Design

- Probabilistic Hallucinations
- The Semantic Gap
- Proprietary Data Scarcity
- Backend Precision Limits

## ModifyV

An LLM based SoC Modification Framework with AI