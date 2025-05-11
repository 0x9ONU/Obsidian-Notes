Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
#hwsw 

```ad-summary
How can you simplify the board’s design while maintaining performance? Propose two ways to reduce cost and complexity (e.g., reducing I/O, moving some tasks to FPGA, or using software-based solutions).

Also, should the board be manufactured in-house or outsourced?

- If you suggest outsourcing, how do you ensure the supply chain remains reliable and cost-effective (considering issues such as tariffs, availability of components, and shipping costs)?
- If in-house manufacturing is preferred, how would you manage production to reduce costs, especially when considering board size and the associated costs of different fabrication processes?
```

The main reduction in cost and complexity comes from the use of the FPGA to off-load tasks from both the TPU and DSP to reduce their load and cost of the system. An FPGA is able to utilize it’s multiple DSP slices and it’s CLBs to create a pipelined algorithm that uses loop unrolling to quickly and efficiently parallelizes tasks for the DSP [10]. Additionally, the TPU is able to ask he CPU for the FPGA to improve pre-existing MAC operations for the TPU. By adding either extra carry chains, more adders adders and shadow multipliers, the MAC density of the chip can be increased by 6.1 times over with minimal added overhead [7]. Additionally, instead of adding extra memory past the provided memory on each of the chips, the FPGA can either provide it’s extra memory or even make more memory for the chips if the bandwidth of the memory is a bottleneck for the TPU or DSP [7]. 

Another reduction in cost can be solved by virtualizing processes found on both the TPU or the DSP and put them on the backend of the CPU as well. Since most of the heavy lifting is done by the TPU, DSP, and FPGA, the CPU should have some extra room left to have virtualized components run in the background. For example, algorithms can be used to transforms fast mathematical algorithms that a DSP will solve into an algorithm that can be ran on software [22]. Even though this is much slower than it physical running on hardware, it can be used to maximize the CPU’s usage and allows the system to be squeezed for extra performance.

As for being manufactured in-house or outsourced, the board should have the correct use of components to be made within the country. It does not have any custom chip and will utilize the components onboard with minimal extra SoCs or ICs outside of buffers between each chip. To minimize he production costs and time, a pick-and-place method will be used if possible such that the PCBs can be self-populated and quickly shipped off in bulk. Since most of the scheduling happens from the CPU’s side, the only thing that needs to be programmed is the flash BIOS chip to setup each of the chips before the operating system on the CPU takes over and does the rest of the work. Since the board size is not the largest constraint, larger and cheaper components can be used on the board as well to reduce costs of the extra parts.