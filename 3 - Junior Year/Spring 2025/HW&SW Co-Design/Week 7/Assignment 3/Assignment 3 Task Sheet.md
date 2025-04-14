**Investigating Multi-Core Scheduling in Real-Time Systems**

**RMS** and **EDF** are widely used in single-core real-time systems. However, in multi-core systems, their inherent limitations become apparent due to challenges like:

- **Task Migration**: The process of moving a task from one core to another in a multi-core system to balance the workload or meet deadlines.
- **Load Balancing**: The technique of distributing tasks or workloads evenly across multiple cores to optimize system performance and prevent any core from being overburdened or underutilized.
- **Synchronization Overhead**: The additional time and resources required to manage communication and coordination between tasks running on different cores, which can impact system performance.
- **Scalability**: The ability of a system to handle an increasing amount of workload or to be expanded with more cores without significant performance degradation.
- **Shared resources:** In multi-core systems, cores share resources (e.g., memory, caches) and tasks may need to migrate between cores, introducing new complexities that affect deadline guarantees and system performance.

**Tasks:**

- **Part 1**: **Why RMS and EDF are Not Ideal for Multi-Core**

- Discuss the **challenges** RMS and EDF face in multi-core systems (e.g., task migration overhead, load imbalance, resource contention).
- Analyze why **static scheduling** (RMS) and **dynamic scheduling** (EDF) can fail to provide real-time guarantees in multi-core systems.

- **Part 2**: **Alternative Scheduling Techniques**

- Investigate and analyze at least **two alternative scheduling algorithms** designed for multi-core systems (e.g., **Hybrid Scheduling**, **Global and Partitioned EDF**, **Slack Stealing**, **Fair Scheduling**, or **Clustered Scheduling**).
- Compare these techniques to RMS and EDF, highlighting how they handle task migration, load balancing, and resource contention more effectively in multi-core environments.

- **Part 3**: **Real-World Examples**

- Find at least **two real-world examples or case studies** of multi-core real-time systems that use alternative scheduling techniques. These could come from industries like **aerospace**, **automotive systems**, or **embedded systems**.
- Analyze how these systems implement the alternative techniques and the impact these scheduling methods have on their performance, real-time guarantees, and scalability.

3. **Deliverables:** A written report including

- Summary of the challenges of RMS and EDF, and the strengths of the alternative scheduling techniques.
- An analysis of real-world examples or case studies, explaining how alternative scheduling techniques have been implemented and their impact on system performance.