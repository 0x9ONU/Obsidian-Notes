# Original Papers

## Paper 1: A Comprehensive FPGA Reverse Engineering Tool-Chain: From Bitstream to RTL Code

### Problem & Gap

- FPGA implementations can often be attacked by hardware Trojans 
- Traditional methods look at RTL to find HTs
- Most FPGA end users only have a bitstream, rather than the RTL code

### Core Methodology

- Introduces a reverse engineering tool that can transform the FPGA bitstream to an RTL code, so it can assist in HT detection
	- Construct an Integrated Database for FPGA information and bitstream mapping (**Library Generator**)
	- Create a bitstream reversal tool (BRT) to go from bitstream→netlist
	- Create a netlist reversal tool (NRT) to turn netlist→RTL
- *Database*
	- **Baseline**: A single logic tile or I/O tile is generated, and every configurable element is tested one by one
	- **Computes Offset**: Finds configuration frame distance between tiles by modifying a blank netlist to implement the same function on the baseline tile and the untested tile.
	- **Travels Through Offsets**: Moves through all untested tiles of the same type to determine their offset values relative to the baseline’s bitstream
	- Saved in three tables
		- Element mapping Table
		- Programmable Switch Mapping Table
		- Offset Value Table
- *BRT*
	- Load file
	- Reverse routing 
		- using the database made before. 
		- Identifies where the turn-on programmable switches are
		- Uses BFS to recover all signal nets from there
	- Information patching
		- MVOE problem
			- A configuration bits value could implement multiple working patterns
				- ex. could go to either OFF or a port on the device
		- Pick elements with uncertain patterns
		- Analyze their correlation with neighbors
		- Patch the missed information
		- See ALG 1
	- Element Reversal
		- Use the working patterns based ont eh bitstream file, the database, adn the aptch information to determine the function of every element
	- Output the netlist usin
		- Routing information
		- Functional Elements from the element reversal 
- *NRT*
	- Read in netlist
	- Determine I/O
	- Cluster Extraction
		- Find out how each element is connected from PAD-to-PAD
		- Use DFS to find out all signal paths belonging to one cluster. Keeps going until it finds the next pad
	- Code Generation
		- Takes each cluster and replaces them with their equivalent RTL
		- Combined together using the cluster map
	- Output RTL
- Steps:
	- Recover the netlist and RTL code from bitstream using two methods above
	- Employ two HT detection techniques
		- Controllability and Observability COTD *check 9*
		- Coverage AnalysisCA *check 10*
	- Find results for HT detection by these two methods on the classical databases and real applications
- Testing
	- Involves ISCAS’85 and ISCAS’89 for classical dataset coverage
	- Real applciations on 8051 core, 68HC08, and AES

### Key Results

- 100% correct rate for all applications

### Limitations/Future Work
- Outdated test datasets
- Prone to corruption of both authentic bits and Trojans bits, which degrades re-engineering and HT detection (100% → 80.2%)
- Only works on unencrypted bitstreams. Methods exist for decrypting bitstreams via side channel attacks. Just has not been applied to reverse engineering according to this paper

### Connections



## Paper 2: Automated Reverse Engineering Tools for FPGA Bitstream Extraction and Logic Estimation

### Problem & Gap
- FPGAs have begun to be used in many new applications like never seen below, including security and AI
- 

### Core Methodology
- Bitstream data along with a sampling clock signal is extracted using a logic analyzer
- Find what device it is using the device identification register
- Extract the logic from the LUTs by using addresses and conversion patterns 
- LUTs are turend into 
- 
### Key Results
- 100% Accuracy on extracted bitstreams
- Pre-paper no significant results otherwise

### Limitations/Future Work
- A method is needed to automatically gather and process large amount of bitstream fields to analyze the bitstream format
- Only focused on single LUTs

### Connections


## Paper 3: BitFREE: On Significant Speedup and Security Applications of FPGA Bitstream Format Reverse Engineering

### Problem & Gap

- Reverse engineering is needed for security verification and reliability analysis
- Most bitstream reverse engineering attempts take multiple days to partially retrieve results from even a small FPGA model
	- Up to more than one year of time
- Caused by huge size and architecture-specific nautre of bitstream formats
- Error-prone as a single error propogates through the whole design

### Core Methodology

- BitFREE reduces the procedure from weeks down to minutes without accuracy downsides.
- Presents the bitFREE framework
	- Config Memory Disaggregation
		- Get title-level FPGA architecture and its 2D map from the .xdlrc file
		- Use frame addresses in the 32-bit FAR format into column-level configuration
		- Take the columsn and break them down into tiles based on regional information, like IO and CLB, and the clock regions. Broken down from Frame→config data→blocks→tiles
	- Bitstream Format Derivation
		- Implemented using A;gorithm 1. This is the *main contribution*
		- It makes a .xdl containing empty routing paths and the basic I/O blocks
		- It adds on PIP per tile into **a single test netlist**, which allows the routing to populate multiple independent tiles in parallel
		- Converts the .xdl into the .ncd for the specific vendor needed
		- Using the tile-level memory map, it extracts the configuration bits correponding for each tile. 
			- It compares them using XOR and a all-zero baseline to find what bits are flipped.
			- This shows us what each tile activated (such as a PIP switch or a LUT equation)
- Run experiments to demonstrate accuracy of reverse engineering of AES-GF, Simon, and Present *see 14* on different FPGAs
	- Compiled on Virtex-5 and Virtex-7 models
- Provide two security applciaitons that Bit can be used on:
	- Routing-level bitstream tampering (side-channel)
	- Ring oscillator detection (HT)

### Key Results
- Were able to prove their own hypothesies
- Reduced complexity from $(M_{i}+N-1) \times T_{i} \Rightarrow (\lceil \frac{N}{M_{i}}  \rceil +1) \times T_{i}$ 
	- $M_{i}$ is the number of INT tiles
	- $T_{i}$ is the time consumption generating a bitstream of the specified FPGA
- 33 hours → 1 assuming $T_{i} = 20s$
- Was able to compromise the Simon crypto core using side channel and this method
- Was able to find detect all ROs successfully
### Limitations/Future Work
- Need to know what device you are reverse engineering before you start.
- Only tested on Virtex models
- Only two CLB and INT tiles are tested against
- Difficult to implement their solution into Vivado because “the netlist cannot be manipulated arbirariliy as XDL” due to the DRC

### Connections
- Uses a similar idea to [[Paper Note Summaries#Paper 5 Project Foxtrot Abstracting the Complexity of Bitstream Reverse Engineering Through ML|Paper Five]] to use the textual file to get the 2D coordinates of all fixed resources

## Paper 4: Fast Reverse Engineering for Xilinix FPGAs

### Problem & Gap

- Previous work requires creating mapping tables for every tile manually, necessitating up to 100 day of processing

### Core Methodology
- Instead of making a mapping table for every tile, only reference table(s) are made and then an offset calculator is needed, which can be used to reverse engineer the whole FPGA
- Differences in hardware location are only caused byt he word index
- A single mapping table for each tile type can cover all bases by just changing the word index.
- For every tile that is the same type in the same column, they are lined up and can be found based on a left-right positioning system
- For tiles of the same type in different columns, a 2d variation is used instead since they may be in different frames
- 

### Key Results
- Only a single table was sufficient for every data type
- Can be generated in 21 days, which is 20 times faster
- 94% for PLP and 95% for PIP

### Limitations/Future Work
- Only considers the Spartan-3 family
- The number of bitstream files that are needed to be generated is still constrained by the number of tiles and the number of configurations or PIPs

### Connections

- Like paper 3, it tries to speed up the reverse engineering process
## Paper 5: Project Foxtrot: Abstracting the Complexity of Bitstream Reverse Engineering Through ML

### Problem & Gap
- Revere engineering of FPGAs is often very specific to various FPGA vendors
- Makes it very difficult to detect potential threats like HT as a specific method is needed for every major FPGA model

### Core Methodology

- Uses ML to simpifly and accelerate the bitstream mapping process
- Provides a universal approach via a universal fuzzer
- Demonstrate how this universal fuzzer can be used on a multitude of different arhitectures
	- Bitstream Generation 
		- Creates 3 types of bitstreams for every architecture using their respecitive EDA toolchain
		- 2 designs who are exactly the opposite such that their LUTs can be XORed to see their configuration bit
		- Random intialized LUTs
	- Maps bitstreams using the Density-Based Spatial Clsutering of Appplciaitons with Noise (DB-SCAN) Algorithm) to determine the general hierachy of the FPGA to generate resource-to-physical mappings
		- Createsa  CSR indx, which evaluates how well clsuters alignw ith the FPGA’s structural constraints
	- Aligns the bitstream 2D mapping to a known FPGA fabric structure
	- Prepare this data and train a deep learning model to automatically label these 2D mapping files to a specific architecture
- Target 3 different FPGA architectures that had three 
	- Altera Flex
	- Spartan 7
	- Artix 7

### Key Results
- Perfect decoding was found across every FPGA tested in under 20s with the deep learning model

### Limitations/Future Work
- Limited only to recovering LUT truth tables
- Routing resource mapping was out of scope due to it being decentralized across multiple switches and interconnects
- Finding the right number of epochs, batch size, the optimizer, adn the loss function are critical 
- Domain-specific algorithms might be faster
- Limits scalability and time-consuming the larger the FPGA becomes
- The model needs to be trained on every specific device family to work. It will not work on an unknown source

### Connections

- Paper 1, 3 also partially focus on HT

# Related Papers

## Paper 1 Relations

### Citation 2: Hardware Torjan Insertion by Direct Modification of FPGA Configuration Bitstream

### Citation 6: Overcoming an Untrusted Computing Base: Detecting and Removing Malicious Hardware Automatically

### Citation 14: WordRev: Finding Word-Level Structures in a Sea of Bit-Level Gates

### Citation 21: A Bitstream Reverse Engineering Tool for FPGA Hardware Trojan Detection

### Citation 28: Topological Sorting of Large Networks
## Paper 3 Relations

### Citation 4: Insights Into the Mind of a Trojan Designer: The Challenge to Integrate a Trojan into the Bitstream

### Citation 9: BITMAN: A Tool for and API for FPGA Bitstream Manipulations

### Citation 15: Project X-Ray

## Paper 4 Relations

### Citation 4: Deriving an NCD file form an FPGA bistream: Methodology, Architecture and Evaluation

### Citation 5: Insights Into the Mind of a Trojan Designer: The Challenge to Integrate a Trojan into the Bitstream

See above: [[Paper Note Summaries#Citation 4 Insights Into the Mind of a Trojan Designer The Challenge to Integrate a Trojan into the Bitstream |Here]]

## Paper 5 Relations

### Citation 7: Fast FPGA Reverse Engineering for Hardware Metering and Fingerprinting

### Citation 9: Adam: A Method for Stochastic Optimization

# Added Papers

## From Paper 5: Reverse Engineering FPGA Routing Resources with Graph Neural Networks



## From Paper 3: REVbit 1.0 & 2.0



## From Paper 2: A New Dynamic Countermeasure to Strengthen Design Obfuscation in FPGAs

