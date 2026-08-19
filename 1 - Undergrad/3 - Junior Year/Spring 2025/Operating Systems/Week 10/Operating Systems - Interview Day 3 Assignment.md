Date: 4th April 2025
Date Modified: 4th April 2025
File Folder: Week 10
#operatingsystems

```ad-abstract
title: Assignment Summary
collapse: open

Today's task is simple: what real-world operating systems use:

- deadlock prevention
- deadlock avoidance 
- detection techniques

Write a short report outlining the state of the art approaches to managing deadlocks.

```

# Real-World Operating Systems Taking Care of Deadlocks

## Common Deadlock Techniques

In the real-world, deadlocks can be devastating for operating systems if they are not handled properly. When two or more processes fight for the same resource without exhaustion, it can cause an indefinite delay where both the resources and the processor space are being wasted. At the worst case, it can cause a fatal error in the operating system and cause the computer to crash. To prevent this, deadlock prevention, avoidance, and detection methods have been discovered to try and mitigate the problems associated with deadlocks while upholding the multi-core and multi-threaded systems that are standard in the computing system today [1].  

*Deadlock Prevention* is the most simple method to stopping deadlocks. If a specific method in an operating system can cause a deadlock, then you can disable it. For example, mutual exclusion can be disabled. No mutual exclusion allows all processes to access every resource as a read-only file as they please. However, some devices, like printers, require mutually exclusive access of a resource to work at all, making it not ideal in certain circumstances. Deadlock prevention is used most commonly in mainframe operating systems and real-time operating systems, where it is upmost important to meet deadlines and prevent deadlocks. Examples include z/OS, z/VM, VRTX, LynxOS, and QNX [1].

*Deadlock Avoidance* is the next step in the evolution of deadlock techniques. Much like deadlock prevention, it will focus on disabling a necessary condition that will allow a deadlock to happen. Instead of completely disabling the technique; however, it will attempt to prevent a process from running if it exploits a condition to cause a deadlock or temporarily disable a condition until it is safe to enable again. Trying to get a system into the safe state, where deadlocks cannot happen, is the main goal of deadlock avoidance. Both some Unix variations, such as Solaris, and research operating systems take advantage of deadlock avoidance whenever possible [1].

*Deadlock Detection* uses the mentality that a deadlock will not cause the system to crash. Instead, it will allow deadlocks to happen and then use it’s resources to recover from the deadlock when it happens. Since both deadlock prevention or avoidance can be a costly hit to performance, deadlock detection is used in systems where a user wants to use the maximum capabilities of their CPU. However, it must be noted that there is significant overhead to both detect deadlocks across a system and have a recovery policy in place. Most modern operating systems use deadlock detection over prevention and avoidance (Windows, macOS, Linux distributions, Android, iOS).
## State-of-the-Art Deadlock Techniques

Even to this day, there has been rigorous work in the academic space to improve on deadlock prevention, avoidance, and detection. Soliman *et al* proposes a proactive method for preventing deadlocks in network-driven devices. Specifically, they divide the processes on the systems into three *Apex-Based Subgraphs*, with two parallel subgraphs, to generate a triangle topology for processes, which tries to find the circular nature found in deadlocks. If each of the three main subgraphs connect together to form a path, it means that there is a deadlock and the prevention is kicked into place for those algorithms. The prevention method ensures that the processes and their packets are routed in a proper order to avoid further cycling [2].

Zohra, Farhin, and Kaiser developed an upgraded algorithm on the common Banker’s algorithm called **Dynamic Banker’s Deadlock Avoidance Algorithm (DBDAA)**. With it’s new features, processes can join a system in real-time and do not need to wait for pre-defined cycle times, has a better time complexity ($\Omega(n)$ & $\Theta(n \times d)$), a way to hold unsafe processes until it is safe to execute them, more safety checks, and adds real-time adaptability such that unsafe processes are re-assessed every $m$ clock cycles [3].

Tseng, Chen, and Pan introduce a novel deadlock prevention and recovery policy for flexible manufacturing systems (FMS). For detection, they use a resource flow graph (RFG). The nodes of the graph represent resources and machines, while the edges show allocation and request relationships. Deadlocks are detected when a cycle is found within a graph. To recover from the deadlock, the system will force the cycle to be broken by allowing a certain process to take the resource of another process based on it’s priority, cost of resource transfer, and available buffers or machine sin the system. They claim it will help reduce production delays, minimize part loss, and improve system throughput when compared to previous approaches [4].

## Resources

[1] A. Silberschatz, P. B. Galvin, and G. Gagne, _Operating System Concepts_. Hoboken, NJ: J. Wiley & Sons, 2012.
[2] K. Soliman, S. Feng, R. Shengqiang, and C. Li, “Proactive deadlock prevention based on traffic classification sub-graphs for triplet-based NOC triba-cnoc,” _Microprocessors and Microsystems_, vol. 110, p. 105091, Oct. 2024. doi:10.1016/j.micpro.2024.105091
[3] Most. F. Zohora, F. Farhin, and M. S. Kaiser, “DBDAA: A real-time approach to Dynamic Banker’s deadlock avoidance algorithm with optimized time complexity,” _PLOS ONE_, vol. 19, no. 9, Sep. 2024. doi:10.1371/journal.pone.0310807
[4] C.-Y. Tseng, J.-C. Chen, and Y.-L. Pan, “An improved deadlock recovery policy of flexible manufacturing systems based on resource flow graphs,” _IEEE Access_, vol. 12, pp. 65202–65212, 2024. doi:10.1109/access.2024.3396879


