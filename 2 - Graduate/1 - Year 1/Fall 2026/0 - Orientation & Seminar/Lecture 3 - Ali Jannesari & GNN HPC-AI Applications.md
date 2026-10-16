```ad-summary
Dr. Jannesari is an assistant professor at Iowa State
- FOCUS: *AI* and *HPC*
```

# Current Research

**AI for HPC:**
- AI for program analysis and HPC code
- AI for performacne, autotuning, and scheduling
- Software analytics for HPC
	- Mine some code and learn how to fix the code 

**HPC for AI**:
- Efficient and scalable learning and interfences
- distributed training and **federated** learning
- High performance machine learning

## HPC for AI

- Training accleration of GNNs/LLMs
	- Rudder [ICS 26], OCF [HPDC 25], MassiveGNN [Cluster 24]

## AI for HPC

- Scheduling and resource management, memory and I/O
- Performance and runtime analysis, profiling, autotuing, device mapping
- *Compilers, code optimization/parallelization, code generation/translation*
- Verification and correctness analysis

### Challenges

1. Bad datasets (unlabeled and imbalanced)
2. Code representation
3. Profiling and runtime information
4. System heterogeneity and performance protability
5. Reasoning agents
# Rudder: Steering Prefetching in Distributed GNN Training using LLM Agents

## Problems with GNN Training

```ad-summary
It is **communication heavy**
```

1. **Partition graph across machines:** each machine owns only *part* of the graph
2. **Minibatch sampling**: Sampler picks seed nodes and expands to multi-hop neighbors
3. **Remote node fetching**: Required neighbors may live on other machines and must be *fetched*
4. **Trainer/GPU stalls**: Trainer waits for remote node features

```ad-warning
Irregular remote fectches can further stall the trainer
```
## Previous Solution

*Remote Node Reuse Exists*: not every minibatch needs brand-new nodes and might re-use nodes that are already fetched

```ad-summary
**Prefetching** is when a machine holds on to remote nodes ahead of time in a buffer
```

*Current issues with prefetching methods*:
- We refresh the buffer on a timer
- Static policies assume fixed graph behavior, which is not true for GNNs

```ad-question
When should the buffer be refreshed?
```

## Proposed Solution

They use an agentic approach: an agent is used to find which nodes are most important, stores them in the buffer, and refreshes the buffer as necessary.
- *Adaptive* to the current graph structure
- **LLMs** allow agents to use runtime context directly, unlike ML which needs offline traces and labels
	- Improves the responses richness at the cost of asynchronous overhead

### Choosing an LLM: Constraints and Metrics

1. Mathematical reasoning: High
2. Response time: No more than 1 training iteration
3. Size
4. Context window length
5. Instruction compliance

### In-Context Learning (ICL) Prompt Engineering


- The LLM learns from past mistakes using ICL

**Design structure**:
1. Show current buffer state and key metrics
2. Include past decisions and their system impact
3. Allow the system to do a self-reflection
4. Output if that you replace/skip the result and the expected impact of the decision

### System Integration

Rudder runs prefeching and interference *asychronously*
- Trainer works on current minibatch
- Prefetcher prepares next minibatch
- Inference thread makes replacement decisoins concurrently

## Results

1. Improves end-to-end exectuion by up to 82% over DistDGL+fixed
2. Increases Hit rate by up to 50%
3. Communication overhead improved by 36%
4. LLMs are competitive with zero offline data/training
5. 3 Billion parameters is the sweet spot for the LLM size
	- Too small and it considerably looses hit rate
6. Reaches optimal hit rate more quickly with lower communication than the LLM solution

## Future Work

Using LLM agents to predict *what* (along with *when*) to prefetch replacing the heuristics-based scoring policy

# PerfoGraph

```ad-summary
IR-based program graph represenation. Makes multiple graphs of your code:
1. COntrol flow
2. Data flow
3. Call graph
```

- Breaks down aggregate data types to *chain of nodes*

# AutoParLLM

```ad-tldr
Take the Perfograph, feed it into a GNN, discover a better way of making it, make a GNN prompt, and put it into an LLM to improve the code
```

# Applications

1. Fraud protection (HydroDeep with Distributed GNN)
2. Atomic-Scale Microscopic Imagery

# Opportunities

Future Ai Needs:
1. Efficient training and inference
2. Distributed and federated leanring
3. Energy-efficient execution

https://swapp.cs.iastate.edu