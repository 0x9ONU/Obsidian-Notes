Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** ARM

**DOI**: https://developer.arm.com/documentation/ddi0414/i?lang=en

**Authors**: n/a

**Publication Year**: 2012

**Country of Study**: USA

**Tags**: #arm #architecture #hwsw #cpu #controller

```ad-abstract
title: Abstract
collapse: open
 This preface introduces the Cortex-A9 MBIST Controller Technical Reference Manual. It contains the following sections: • About this book on page v • Feedback on page viii
```

**Embed to Paper**: ![[ARM Cortex-A9 Processor.pdf]]

## Summary

#### **1. Preface**

- **About the Book**:
    
    - This manual describes the **Cortex-A9 MBIST (Memory Built-In Self-Test) Controller**, which tests embedded RAM blocks in the Cortex-A9 processor.
        
    - Target audience: **Hardware engineers** familiar with ARM technology and AXI protocols.
        
- **Conventions**:
    
    - Typographical, timing diagrams, and signal conventions are defined (e.g., bold for signal names, italic for special terms).
        
- **Feedback**: ARM welcomes feedback on the product and documentation.
    

---

#### **2. Introduction**

- **About the MBIST Controller**:
    
    - MBIST is an industry-standard method for testing embedded memories by performing sequences of reads/writes.
        
    - The MBIST controller generates test patterns for Cortex-A9 RAMs and takes priority over other modes (e.g., SCAN).
        
    - **Figure 1-1**: Shows the MBIST configuration with the controller interfacing Cortex-A9 RAMs (CPU RAMs, SCU RAMs).
        
- **MBIST Controller Interface**:
    
    - **Figures 1-2 and 1-3**: Wiring diagrams for non-parity and parity configurations.
        
    - **Table 1-1/1-2**: Signal descriptions for non-parity/parity modes (e.g., `MBISTENABLE`, `MBISTADDR`, `MBISTINDATA`).
        
    - Traditional methods (Figure 1-4) reduce performance; the MBIST controller uses multiplexers for high-frequency operation.
        
- **Product Revisions**:
    
    - Lists changes across revisions (r0p0 to r4p1), mostly documentation updates or hardware configuration additions.
        

---

#### **3. Functional Description**

- **Functional Overview**:
    
    - **MBIST Controller Interface**:
        
        - Pins like `DBGEN`, `NIDEN`, and `SPIDEN` must be tied LOW during MBIST mode.
            
        - **Table 2-1**: MBIST interface signals (e.g., `MBISTRUN`, `MBISTSHIFT`).
            
    - **MBISTINDATA and MBISTOUTDATA Mapping**:
        
        - Describes data bus mappings for different RAM types (Instruction/Data RAMs, tag RAMs, TLB, GHB).
            
        - **Figures 2-1 to 2-18**: Show data formats for RAM arrays (e.g., checkerboard patterns).
            
    - **MBIST Controller Implementation**:
        
        - Comprises an MBIST controller and dispatch unit.
            
        - **Figure 2-19**: Block diagram of the MBIST controller.
            
        - Signals like `MBISTTX[11:0]` (controller to dispatch) and `MBISTRX[5:0]` (dispatch to controller) are explained.
            
- **Functional Operation**:
    
    - **Timing**:
        
        - **Figures 2-20 to 2-24**: Timing diagrams for instruction loading, test