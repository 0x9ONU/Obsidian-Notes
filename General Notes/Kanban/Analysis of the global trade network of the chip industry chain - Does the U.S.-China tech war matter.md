Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** Heliyon

**DOI**: https://www.cell.com/heliyon/fulltext/S2405-8440(23)04300-1

**Authors**: Yongli Zhanga, Xianduo Zhub

**Publication Year**: 2023

**Country of Study**: USA

**Tags**: #chip #trade #hwsw #global

```ad-abstract
title: Abstract
collapse: open
Chip is the “brain” of the information industry and modern manufacturing industry, and supply chain security is the key to the sustainable development of the industrial chain. From the perspective of the industrial chain, this paper selected semiconductor silicon wafers and equipment, integrated circuits, electronic computers, and components as representative commodities in the upstream, midstream, and downstream of the chip industry chain, constructed global trade networks of the chip industry chain, and analyzed the characteristics of the networks and nodes in 2020 and the changes in China's status before and after the China-U.S. tech war. The study results indicate that the network scale and network density of the global trade network of downstream electronic computers and components are higher than those of midstream integrated circuits; the global trade network of upstream semiconductor wafers and equipment has the smallest network scale and network density, and the trade networks of all links show obvious small-world characteristics; The United States ranks first in betweenness centrality of all links, with the strongest control ability and the largest number of trading partners in all links; China has higher betweenness centrality and more trading partners in the global trade network of the two upstream commodities than that of the midstream commodities, and the lowest betweenness centrality in the global trade network of the downstream commodities; The core countries of the chip industry chain are concentrated in southeast Asia, east Asia, central and western Europe, and the United States. China's trade status of semiconductor silicon wafers and integrated circuits has declined significantly during the China-U.S. tech war. The nodes in the chip trade network have good robustness in the face of random attacks and show vulnerability under target attacks. Additionally, the trade network's robustness in the chip industry chain is the strongest for downstream commodities, ranks second for midstream commodities, and is the weakest for upstream commodities. These findings can provide references for ensuring chip supply chain security in China and other trade-participating countries.
```

**Embed to Paper**: ![[Analysis of the global trade network of the chip industry chain - Does the U.S.-China tech war matter.pdf]]

## Summary

### **I. Introduction**

- China is the world’s largest consumer of chips but has a low chip self-sufficiency rate (~15% in 2020).
    
- The **U.S.-China tech war**, which restricted exports to Huawei and SMIC, has intensified China’s chip shortage.
    
- The COVID-19 pandemic also exacerbated supply issues due to shutdowns and rising demand for electronics.
    
- Ensuring **chip supply chain security** is now a critical issue for China and the world.
    
- This study explores **global trade characteristics**, **China's trade status**, **network robustness**, and the **core-periphery structure** of chip-related commodities.
    

---

### **II. Literature Review**

- **Complex networks** are widely used in trade analysis but have rarely been applied to **high-tech products** like semiconductors.
    
- Most prior studies focus on **single-product networks**, failing to explore cross-link relationships (e.g., upstream vs. downstream).
    
- The authors fill this gap by analyzing four commodity categories across the **chip industry chain**.
    

---

### **III. Model and Method**

- Constructs **directional, weighted trade networks** for:
    
    1. Semiconductor silicon wafers (HS: 381800)
        
    2. Semiconductor equipment (HS: 8486)
        
    3. Integrated circuits (HS: 8542)
        
    4. Computers & components (HS: 8471)
        
- **Nodes = countries**, **Edges = trade relationships**, **Weights = trade value**
    
- Uses standard complex network metrics (see **Table 1**), including:
    
    - Degree
        
    - Betweenness centrality
        
    - Network density
        
    - Clustering coefficient
        
    - Network efficiency (used in robustness analysis)
        

---

### **IV. Results and Analysis**

#### A. Trade Network Size and Characteristics

- **Fig. 2**: Shows global trade value trends (2016–2020)
    
    - ICs had the largest total trade value
        
    - Wafer and equipment trade grew slower than mid/downstream products
        
- **Fig. 3**: Visualizes the 2020 trade networks
    
- **Fig. 4**: Downstream (computers) has the most trade relationships (9208), upstream (wafers) the least (1189)
    
- **Fig. 5**: Network density and diameter:
    
    - **Downstream** networks: most interconnected and efficient
        
    - **Upstream**: sparse, low-density, and higher trade distances
        
- **Fig. 6**: Confirms “**small-world network**” features:
    
    - Short average paths between countries
        
    - High clustering coefficients (>0.38)
        

#### B. Key Trade Nodes (2020)

- **Table 3**: Top countries by trade degree (number of trade partners)
    
    - **U.S. dominates** all categories
        
    - China leads in **upstream** trade, lags in **downstream**
        
- **Figs. 7 & 8**: Weighted import/export rankings
    
    - **China** is the largest **exporter of computers**, but **importer of ICs and equipment**
        
    - **Japan**, **U.S.**, and **Netherlands** dominate **equipment exports**
        
    - **China**, **Taiwan**, and **South Korea** lead IC imports
        
- **Table 4**: Betweenness centrality
    
    - U.S. ranks **#1 in all four categories**, reflecting strong **control over global chip flows**
        
    - China has relatively high centrality **only upstream**
        

#### C. China’s Trade Characteristics

- **Fig. 9**: China’s trade volume (2016–2020)
    
    - General upward trend, but significant drops in 2019 (coinciding with tech war escalation)
        
    - **2020 rebound** shows resilience
        
- **Tables 5 & 6**:
    
    - **Japan and Taiwan** are top upstream partners
        
    - **Hong Kong** dominates midstream/downstream trade with China
        
    - China remains **assembly-driven**, importing ICs and exporting final products
        

#### D. Core-Periphery Analysis

- **Table 7**: Core countries for each category:
    
    - Consistently includes **U.S., China, Taiwan, Japan, Korea, Singapore**
        
    - **Southeast Asia and Western Europe** also play key roles
        
- **Fig. 10**: China’s “coreness” over time
    
    - Stable in downstream; rising in **equipment**
        
    - Declining in **wafers** and **ICs** due to tech war restrictions
        

#### E. Robustness Analysis

- Examines how trade networks respond to **random** and **targeted attacks** using Python simulation
    
- **Figs. 11 & 12**: Show network efficiency under attacks
    
    - **Target attacks** reduce efficiency faster than random ones
        
    - Downstream networks are most robust; **upstream is weakest**
        
- **Table 8**: Network efficiency drops more sharply in **upstream trade** under attack
    
    - Indicates **fragility of wafer/equipment supply chains**
        

---

### **V. Conclusion and Policy Implications**

#### Key Findings:

1. **Downstream trade networks** are the largest, densest, and most robust.
    
2. **U.S.** controls the flow of all major chip products.
    
3. **China** is strongest in **upstream and assembly roles**, but lacks midstream independence.
    
4. All four sectors show **“small-world”** features, allowing fast global transmission but risking large-scale disruption if hubs are targeted.
    

#### Policy Recommendations:

- **Expand import channels** for upstream/midstream products
    
- **Break through core technologies**, reduce reliance on foreign design/fabrication
    
- **Leverage Belt and Road markets** for downstream exports
    
- **Diversify trade** to minimize geopolitical risk
    
- **Monitor core-country policy shifts** to anticipate supply shocks
