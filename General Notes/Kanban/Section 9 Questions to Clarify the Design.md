Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
#hwsw 

```ad-summary

Formulate three important questions you would ask the investor to clarify aspects of the design. Explain why these questions matter and how the answers will impact your design choices.
```

Before finalizing the simplified and cost-effective version of the programmable single-board computer (SBC), it is critical to engage the investor with a few key design clarification questions. These questions will ultimately shape the feature set, performance expectations, and market viability of the final board. Each question is specifically formulated to extract constraints and goals that directly impact component selection, board layout, and manufacturing strategy.

**1. What is the primary deployment environment for this SBC (industrial, educational, automotive, or consumer)?**

The environmental context determines the necessary tolerances, durability, and regulatory certifications for the board. For example, if the board is targeted for educational use or desktop prototyping, high reliability under extreme temperature swings or vibration is not essential. However, if the SBC is destined for embedded automotive use or edge AI processing in outdoor industrial settings, the components must support extended temperature ranges, moisture shielding, and long-term availability. This single answer dictates not only what physical connectors can be used (e.g., locking vs. standard headers) but also whether the board can include cheaper consumer-grade DDR3, or if industrial-grade memory modules and conformal coatings are required.

**2. Is Linux or a custom RTOS expected to run out of the box, and what level of software support must be provided?**

While the ARM Cortex-A9 on the Zynq-7000 platform is capable of booting a full Linux distribution, like Ubuntu, doing so requires a proper bootloader, kernel image, and device tree setup. If the investor’s expectation is a "plug-and-play" Linux development environment, then NAND or eMMC storage for the OS image becomes mandatory, and peripheral drivers must be pre-integrated. Alternatively, if a real-time operating system (RTOS) or even bare-metal programming is expected for maximum timing control, this reduces software complexity but increases the documentation and tooling burden on developers. The level of OS abstraction defines the memory requirements, startup firmware, and whether the simplified board must retain peripherals like USB storage support or can offload everything to serial interfaces.

**3. Will external I/O or sensor integration be required in-field, or is the board intended to be used as a closed system?**

This question determines the scope of the I/O expansion needs. If the investor envisions end-users integrating sensors, cameras, or actuators post-purchase, then a standardized and accessible GPIO header becomes a high-priority feature. On the other hand, if the board is expected to ship with all required peripherals in a locked configuration, external interfaces can be minimized to reduce cost and complexity. This impacts whether Pmod connectors, I2C/SPI breakout pins, or even a subset of XADC analog inputs need to be preserved on the final design. These changes will ultimately affect the final bill of materials (BOM) and the cost of production. If full expandability is unnecessary, then these components can be removed, further reducing manufacturing costs and board size.