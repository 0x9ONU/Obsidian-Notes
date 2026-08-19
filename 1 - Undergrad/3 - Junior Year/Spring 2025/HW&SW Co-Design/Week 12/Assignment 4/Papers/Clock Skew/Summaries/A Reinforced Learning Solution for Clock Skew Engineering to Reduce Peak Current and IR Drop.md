
# Objective of the Paper

The paper proposes a **Reinforcement Learning (RL)-based solution** to optimize **Clock Skew Engineering** in processors and digital circuits. The goal is to **reduce peak current demand** and **IR drop (voltage drop)** by intelligently adjusting clock arrival times at registers, thereby improving power delivery network (PDN) efficiency and overall circuit performance.

# Key Problems Addressed

1. **Simultaneous Switching & Peak Current Surge**
    
    - Traditional **zero-skew clock trees** cause all registers to switch simultaneously, leading to a **sudden surge in current demand** from the power supply.
        
    - This results in:
        
        - **Resistive (IR) drop** (due to high current flow through resistive PDN).
            
        - **Inductive (L·di/dt) drop** (due to rapid current changes).
            
        - **Voltage noise, clock jitter, and degraded performance** (due to unstable supply voltage).
            
2. **Heuristic-Based Limitations in EDA Tools**
    
    - Existing Electronic Design Automation (EDA) tools use **heuristic algorithms** for clock skew optimization.
        
    - These heuristics are **suboptimal** and fail to explore the full design space for peak current reduction.
        
3. **Trade-off Between Skew and Timing Violations**
    
    - Increasing clock skew can **spread out switching activity**, reducing peak current.
        
    - However, excessive skew may **introduce timing violations** (setup/hold time failures).
        

# Proposed Solution: Reinforcement Learning for Clock Skew Optimization

The paper introduces an **RL agent** that learns to **adjust clock arrival times** at registers to:

- **Maximize the spread (standard deviation) of clock arrival times** → Reduces simultaneous switching.
    
- **Minimize timing violations** → Ensures correct circuit operation.
    

## RL Framework Details

1. **Agent-Environment Interaction**
    
    - **State (Sₜ):**
        
        - Current register location (arranged in a **grid-world/torus** for simplicity).
            
        - Clock arrival times (CAT) of all registers.
            
        - Timing violations (TV) in the design.
            
    - **Action (Aₜ):**
        
        - **Insert/remove buffers** (up to 5) to adjust skew.
            
        - **Move** to adjacent registers (left, right, up, down).
            
    - **Reward (Rₜ):**
        
        - **Positive reward** for increasing clock arrival spread (`rₒ = σ_new – σ_old`).
            
        - **Large negative reward** for introducing timing violations (`rₜ`).
            
        - **Bonus reward** if a previously introduced violation is resolved later.
            
2. **Algorithm Phases**
    
    - **Phase 1 (Delay Start - Exploration):**
        
        - Agent performs **random actions** to explore the design space and populate Q-tables.
            
    - **Phase 2 (SARSA Learning - Exploitation + Exploration):**
        
        - Uses **decaying epsilon-greedy policy** (starts with high exploration, gradually shifts to exploitation).
            
        - Updates Q-values using **State-Action-Reward-State-Action (SARSA)** learning.
            
3. **Adjusted Clock Arrival Time (Λ)**
    
    - Prevents skew adjustments from **shifting switching activity to adjacent clock cycles**, which could reintroduce peak current issues.
        

# Experimental Results & Key Findings

The RL solution was tested on **ISCAS’89 benchmarks, AES, and Ethernet designs** using Synopsys ICC2 for physical design and ANSYS Redhawk for power/IR analysis.

1. **Clock Arrival Time Distribution**
    
    - RL significantly **widened the spread of clock arrival times** (Fig. 4).
        
    - Reduced simultaneous switching, leading to **lower peak current**.
        
2. **Peak Current Reduction**
    
    - **35–40% reduction in peak current** across benchmarks (Fig. 5).
        
3. **IR Drop Improvement**
    
    - Lower **inductive (L·di/dt) drop** due to reduced current surge rate (Fig. 6).
        
    - **Higher minimum rail voltage (V_DEV)** and **lower cycle-to-cycle voltage noise** (Table 2).
        
4. **Timing Slack Improvement**
    
    - Reduced voltage noise → **Lower clock jitter** → **Less uncertainty margin needed** → **More timing slack available** for PPA (Power-Performance-Area) optimization.
        
# How It Solves Clock Skew Problems in Processors

1. **Dynamic Skew Adjustment**
    
    - Unlike static heuristics, the **RL agent dynamically learns** optimal skew values for each register.
        
    - Balances **peak current reduction** and **timing correctness**.
        
2. **Exploration of Non-Intuitive Solutions**
    
    - RL explores **Pareto-optimal frontiers** beyond heuristic-based solutions.
        
    - Can **temporarily introduce violations** (with penalties) if they can be resolved later for a net benefit.
        
3. **Scalability & Generalization**
    
    - Works on large designs (e.g., AES with **10,015 registers**).
        
    - **Grid-world abstraction** simplifies movement policy learning.
# Conclusion & Future Work

- **RL-based clock skew engineering** outperforms traditional EDA heuristics, achieving **35–40% peak current reduction**.
    
- Improves **voltage stability, timing slack, and PPA metrics**.
    
- Future work could explore:
    
    - **Escalating penalty scaling** for timing violations.
        
    - **Deep RL** for larger designs.
        
    - **Integration with commercial EDA tools** for real-world adoption.