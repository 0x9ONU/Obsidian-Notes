Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
#hwsw 

```ad-summary

- Suggest two power-saving techniques that can be implemented on the SBC. Consider aspects like clock gating, dynamic voltage scaling, or sleep modes. How can these techniques help reduce overall power consumption without compromising essential performance?
- How does the choice of processor (ARM Cortex-A9) and FPGA impact the silicon area of the chip?
- Suggest a specific fabrication process/technology (e.g., 28nm, 14nm, etc.) for the chip. Provide reasons for your choice in terms of cost, performance, availability, and how it impacts silicon area (and ultimately chip price).
- How would these fabrication choices affect production cost and availability of the components?
- How do the speed requirements (e.g., for I/O processing) impact your choice of processor and FPGA? Are there any areas where you can optimize time (e.g., through clock gating, frequency scaling, pipeline stages)?

```

One way to reduce power consumption is to improve the clock distribution on the entire chip. Clock distribution networks consume lot of power due to the large capacitive loads necessary to run with DVFS having limited effect on it. Uneven clock arrival times are common as process variations make it difficult to properly synch the clocks. The resonant clocking architecture proposes to provide a series of load inductors to reduce power consumption. The inductors are placed on he discharge path on the clock networks to store extra energy within a magnetic field, which can be then recycled and used during he next stage. This improves power loss caused by switching down by 50%, which allows the capacitor in the next stage to be charged on the next clock edge [24].

Another way to improve power saving is the use of DVFS and power gating as they are able to adjust resource use dynamically based on the workload. However, for AI and ML workloads, it can be often hard to predict the irregularity of distributed neural networks (DNN), especially when they introduce sparsity when an accelerator chooses to prune the network or introduce activation functions. It has gotten so bad that it has been impossible to fully exploit sparsity, which causes efficiency loss on the TPU. Therefore, a group of authors proposed a method allows for sparsity to be predicted in real-time to try to maximize the accelerator’s usage. They use a compact machine learning-based model to train on the sparsity training and actively predict if DVFS should be executed to reduce power loss on the chip [25].

The choice of the processor and the FPGA does not have a big impact on the silicon area of the chip. 