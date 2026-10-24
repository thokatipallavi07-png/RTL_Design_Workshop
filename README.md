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
Traffic Light Controller Using Verilog HDL — RTL to GDSII

1. Project Description

The Traffic Light Controller is a digital VLSI project implemented using Verilog Hardware Description Language (HDL). It controls red, yellow, and green traffic signals in a predefined sequence using a Finite State Machine (FSM). The project demonstrates the RTL-to-GDSII design flow, including RTL design, functional simulation, logic synthesis, floorplanning, power distribution network (PDN) generation, placement, clock-tree synthesis (CTS), routing, static timing analysis (STA), and GDSII generation using a compatible OpenLane/OpenROAD flow and Sky130 PDK.

2. Objectives

- Design a traffic light controller using Verilog HDL.
- Verify signal transitions using a testbench.
- Analyze simulation waveforms using GTKWave.
- Synthesize the design using Yosys.
- Perform ASIC physical design using OpenLane/OpenROAD.
- Analyze cell utilization, timing reports, and final layout results.

3. Verilog RTL Code

File: "traffic_light.v"

`timescale 1ns/1ps

module traffic_light #(
    parameter GREEN_CYCLES  = 5,
    parameter YELLOW_CYCLES = 2,
    parameter RED_CYCLES    = 5
)(
    input wire clk,
    input wire reset,
    output reg red,
    output reg yellow,
    output reg green
);

    localparam GREEN  = 2'd0;
    localparam YELLOW = 2'd1;
    localparam RED    = 2'd2;

    reg [1:0] state;
    reg [31:0] counter;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state   <= RED;
            counter <= 0;
        end else begin
            case (state)
                GREEN: begin
                    if (counter >= GREEN_CYCLES - 1) begin
                        state   <= YELLOW;
                        counter <= 0;
                    end else begin
                        counter <= counter + 1;
                    end
                end

                YELLOW: begin
                    if (counter >= YELLOW_CYCLES - 1) begin
                        state   <= RED;
                        counter <= 0;
                    end else begin
                        counter <= counter + 1;
                    end
                end

                RED: begin
                    if (counter >= RED_CYCLES - 1) begin
                        state   <= GREEN;
                        counter <= 0;
                    end else begin
                        counter <= counter + 1;
                    end
                end

                default: begin
                    state   <= RED;
                    counter <= 0;
                end
            endcase
        end
    end

    always @(*) begin
        red    = 0;
        yellow = 0;
        green  = 0;

        case (state)
            GREEN:  green  = 1;
            YELLOW: yellow = 1;
            RED:    red    = 1;
            default: red   = 1;
        endcase
    end

endmodule

4. Verilog Testbench

File: "traffic_light_tb.v"

`timescale 1ns/1ps

module traffic_light_tb;

    reg clk;
    reg reset;

    wire red;
    wire yellow;
    wire green;

    traffic_light #(
        .GREEN_CYCLES(5),
        .YELLOW_CYCLES(2),
        .RED_CYCLES(5)
    ) dut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("traffic_light.vcd");
        $dumpvars(0, traffic_light_tb);

        reset = 1;
        repeat (2) @(posedge clk);
        reset = 0;

        repeat (30) @(posedge clk);

        $display("Traffic Light Simulation Completed");
        $finish;
    end

endmodule

5. Simulation Commands

Run the following commands in Ubuntu from the project directory:

iverilog -g2012 -o traffic_sim traffic_light.v traffic_light_tb.v
vvp traffic_sim
gtkwave traffic_light.vcd

The simulation generates a VCD waveform file that can be inspected in GTKWave.

6. Synthesis Using Yosys

yosys -p "read_verilog traffic_light.v; hierarchy -top traffic_light; proc; opt; check; stat"

This command performs a basic synthesis check and displays statistics. Technology mapping for Sky130 requires the appropriate library and synthesis configuration.

7. Physical Design Flow

The following stages are intended to be performed using a configured OpenLane/OpenROAD flow:

1. RTL validation and synthesis.
2. Floorplanning and I/O planning.
3. Power distribution network (PDN) generation.
4. Standard-cell placement.
5. Clock-tree synthesis (CTS), when required.
6. Global and detailed routing.
7. Static timing analysis (STA).
8. Design-rule checking (DRC) and layout-versus-schematic (LVS), where supported.
9. GDSII layout generation.

Physical-design commands and configuration files depend on the installed OpenLane version and the selected Sky130 platform.

8. Tools and Technologies

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- OpenLane / OpenROAD
- Sky130 PDK
- Ubuntu Linux
- Oracle VirtualBox

9. Expected Results

- Correct red, yellow, and green signal sequencing.
- Successful functional simulation and waveform generation.
- Synthesis statistics and standard-cell utilization reports.
- Floorplan, PDN, placement, CTS, and routing results.
- Timing reports and a GDSII layout, if all required physical-design stages complete successfully.

Actual results and screenshots should be added after each stage has been executed and verified.

10. Applications

- Road intersection traffic control.
- Digital control systems.
- FSM-based hardware design.
- ASIC design and verification learning.

11. Future Enhancements

- Pedestrian crossing control.
- Emergency-vehicle priority.
- Adaptive traffic timing based on sensor inputs.
- Power, performance, and area (PPA) optimization.

12. Conclusion

This project provides practical experience in Verilog RTL design, functional verification, logic synthesis, and ASIC physical design. It demonstrates how a digital traffic controller can progress from an RTL description toward a physical chip layout through a structured RTL-to-GDSII workflow.
## 👤 Author

- **Student Name:** T. Pallavi
- **PIN / Roll No:** 25EG504F43
- **Workshop:** VLSI System Design (VSD) RTL Design & ASIC Physical Design Workshop
- **GitHub:** [@thokatipallavi07-png](https://github.com/thokatipallavi07-png)

---

## 📜 License & Acknowledgments

This repository is maintained for academic and educational purposes as part of the VLSI System Design (VSD) workshop. Special thanks to the workshop instructors, VSD team, and the open-source EDA community for providing open-source tools, PDKs, and design frameworks.

project presentation video https://drive.google.com/file/d/1my1Lgy2gzlBAVptU9owevN0HuWlUcoV7/view?usp=sharing

