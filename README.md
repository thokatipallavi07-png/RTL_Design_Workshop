# RTL Design & Physical Design Workshop

> **Student:** T. Pallavi  
> **PIN / Roll No:** 25EG504F43  
> **Course:** VLSI System Design (VSD) Workshop — Digital RTL Design & ASIC Physical Design Flow  

🚀 A comprehensive repository for the **VLSI System Design (VSD) Workshop**, featuring day-wise documentation, Verilog HDL source code, Linux command workflows, synthesis scripts, simulation waveforms, GLS analysis, multi-corner STA, and complete ASIC Physical Design (RTL-to-GDSII) lab exercises using open-source EDA tools (**Icarus Verilog**, **GTKWave**, **Yosys**, **OpenLane**, **OpenROAD**, **Magic**, **TritonRoute**, **OpenSTA**, and **SkyWater SKY130 PDK**).

---

## 📌 Table of Contents

### Part 1: Day-Wise VSD Workshop Labs
| Day / Section | Topics Covered | Link |
|---|---|---|
| **Day 1** | Linux Setup, VM Installation & Basic Tools | [Day 1](Day-01/) |
| **Day 2** | Timing Libraries, Synthesis Approaches & Flip-Flop Coding Styles | [Day 2](Day-02/) |
| **Day 3** | Combinational & Sequential Logic Optimization | [Day 3](Day-03/) |
| **Day 4** | RTL Design, Synthesis & Gate-Level Simulation | [Day 4](Day-04/) |
| **Day 5** | IF-ELSE, CASE, and Looping Constructs | [Day 5](Day-05/) |
| **Day 6** | RTL to GDSII Flow, Synthesis & Gate-Level Simulation | [Day 6](Day-06/) |
| **Day 7** | OpenLane Physical Design: Core, Die, Floorplan, Placement | [Day 7](Day-07/) |
| **Labs-BabySoC** | VSDBabySoC Modeling, Simulation & Calibration | [Labs-BabySoC](Labs-BabySoC/) |

### Part 2: Advanced RTL & Physical Design Modules
| Module / Section | Focus Area | Link |
|---|---|---|
| **Module 1** | Introduction to RTL Design, Simulation & GTKWave Flow | [Module 1](Module%201/) |
| **Module 2** | Sequential Logic, Yosys Synthesis & Standard Cell Mapping | [Module 2](Module%202/) |
| **Module 3** | Combinational & Sequential Logic Optimization | [Module 3](Module%203/) |
| **Module 4** | Gate-Level Simulation (GLS), Blocking vs Non-Blocking Caveats | [Module 4](Module%204/) |
| **Module 5** | Synthesis Optimization, Case & Generate Constructs | [Module 5](Module%205/) |
| **Physical Design (VSDBabySoC)** | Synthesis, Floorplan, Placement, CTS, Routing & STA in OpenROAD | [PhysicalDesign](PhysicalDesign/) |
| **Physical Design (OpenLANE PD)** | Complete 5-Module OpenLANE RTL2GDS Flow on Sky130 | [Physical_Design_PD](Physical_Design_PD/) |
| **STA Across All Corners** | Multi-Corner Timing Analysis, Summaries, Graphs & Logs | [STA_All_Corners](STA_All_Corners/) |
| **STA Reports** | Comprehensive Timing Violation & Path Reports | [STA_Report_All_Corners](STA_Report_All_Corners/) |

---

## 📁 Repository Structure

```text
RTL_Design_Workshop/
│
├── README.md                          # Main repository documentation
│
├── Day-01/ to Day-07/                 # Workshop day-wise notes, RTL code & waveforms
├── Labs-BabySoC/                      # VSDBabySoC core integration and lab work
│
├── Module 1/                          # RTL design, testbench simulation flow & waveforms
├── Module 2/                          # Sequential logic synthesis & standard cell library
├── Module 3/                          # Combinational and sequential logic optimization
├── Module 4/                          # Gate-Level Simulation (GLS) & coding styles
│   ├── README.md
│   └── *.png                          # GLS waveforms, caveat comparisons
│
├── Module 5/                          # Synthesis-driven optimization & constructs
│   ├── README.md
│   └── *.png                          # Optimization synthesis netlists & waveforms
│
├── PhysicalDesign/                    # Physical design lab work on VSDBabySoC
│   ├── README.md
│   ├── Reports/                       # Timing reports (WNS, TNS, setup/hold)
│   └── screenshots/                   # Floorplan, placement, CTS, routing layouts
│
├── Physical_Design_PD/                # Complete 5-Module OpenLANE Sky130 PD flow
│   ├── README.md
│   ├── Module 1/                      # EDA, OpenLANE & Sky130 PDK foundations
│   ├── Module 2/                      # Floorplanning, IO placement & standard cells
│   ├── Module 3/                      # Magic layout, ngspice characterization & DRC
│   ├── Module 4/                      # Timing modelling, OpenSTA & TritonCTS
│   ├── Module 5/                      # Power distribution, TritonRoute & final GDSII
│   └── PD_LABWORK/                    # OpenLANE interactive command logs & runs
│
├── STA_All_Corners/                   # Multi-corner static timing analysis
│   ├── corner_summary.csv             # PVT corner timing metrics
│   ├── STA_All_Corners_Report.pdf     # Full multi-corner STA report
│   ├── corners/                       # Per-corner timing summaries
│   ├── graphs/                        # Delay and slew variation graphs
│   └── logs/                          # OpenSTA run logs
│
└── STA_Report_All_Corners/            # Comprehensive STA reports & VSDBabySoC PDF
    ├── VSDBabySoC_STA_Report.pdf
    └── reports/
```

---

## 🛠️ Tools & Technologies Used

- **Hardware Description Language:** Verilog HDL
- **Logic Simulation:** Icarus Verilog (`iverilog`)
- **Waveform Viewer:** GTKWave
- **RTL Synthesis:** Yosys
- **Physical Design Flow:** OpenLANE / OpenROAD
- **Static Timing Analysis (STA):** OpenSTA
- **SPICE Characterization:** ngspice
- **Layout & DRC:** Magic VLSI Layout Tool
- **Process Design Kit (PDK):** SkyWater SKY130 (130nm standard cells & primitives)
- **Clock Tree Synthesis (CTS):** TritonCTS
- **Detailed Routing:** TritonRoute

---

## 🎯 Key Learning Highlights

1. **RTL Design & Simulation:** Designing robust combinational and sequential circuits, building testbenches, and validating functionality via VCD waveform analysis.
2. **Synthesis & Optimization:** Mapping RTL constructs to standard cells using target `.lib` libraries, evaluating cell count, area, and avoiding synthesis/simulation mismatches.
3. **Gate-Level Simulation (GLS):** Verifying synthesized netlists with functional testbenches, handling reset behavior, and resolving blocking vs. non-blocking coding caveats.
4. **Physical Design (RTL-to-GDSII):**
   - Core and die area allocation, aspect ratio, and IO pin placement.
   - Decoupling capacitor insertion, standard cell placement, and congestion analysis.
   - Clock Tree Synthesis (CTS) for skew and latency minimization.
   - Power distribution network (PDN) and detailed grid routing with TritonRoute.
5. **Timing Verification:** Multi-corner PVT STA (Fast, Slow, Typical corners) analyzing Setup Slack (WNS/TNS) and Hold Slack using OpenSTA.

---

## 👤 Author

- **Student Name:** T. Pallavi
- **PIN / Roll No:** 25EG504F43
- **Workshop:** VLSI System Design (VSD) RTL Design & ASIC Physical Design Workshop
- **GitHub:** [@thokatipallavi07-png](https://github.com/thokatipallavi07-png)

---

## 📜 License & Acknowledgments

This repository is maintained for academic and educational purposes as part of the VLSI System Design (VSD) workshop. Special thanks to the workshop instructors, VSD team, and the open-source EDA community for providing open-source tools, PDKs, and design frameworks.
