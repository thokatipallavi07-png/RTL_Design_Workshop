# Physical Design (PD) — VLSI / OpenLANE Workshop

## Overview

This repository contains the practical work, screenshots, and notes completed across all **five modules** of the Physical Design workshop. The workshop progresses from open-source EDA and the Sky130 PDK through floorplanning, standard-cell design and characterization, timing analysis, clock-tree synthesis, routing, and design-rule checking.

The module sequence follows the supplied workshop topic list and preserves the practical figures provided for each module. Each module has its own `README.md` and `Images` directory, with the supplied figures embedded directly in the corresponding README.

## Modules Covered

### Module 1 — Inception of Open-Source EDA, OpenLANE and Sky130 PDK

This module covers the foundations of open-source digital ASIC design, including QFN-48 package/chip terminology, RISC-V, the path from software applications to hardware, SoC design, OpenLANE, the simplified and detailed RTL2GDS flow, OpenLANE directory structure, design preparation, synthesis review, project Git information, and synthesis-result characterization.

[Open Module 1 →](./Module%201/README.md)

### Module 2 — Good Floorplan vs Bad Floorplan and Introduction to Library Cells

This module covers chip floorplanning considerations, utilization and aspect ratio, pre-placed cells, decoupling capacitors, power planning, pin placement, floorplan execution and inspection, library binding, placement optimization, RePlAce congestion-aware placement, cell design/characterization flow, and timing characterization parameters.

[Open Module 2 →](./Module%202/README.md)

### Module 3 — Design Library Cell Using Magic Layout and ngspice Characterization

This module covers CMOS inverter ngspice simulations, SPICE deck creation, switching threshold, static and dynamic simulation, CMOS fabrication/layout formation steps, Sky130 basic layers and LEF, standard-cell layout and SPICE extraction, Sky130 model-file characterization, Magic options and DRC rules, and practical DRC-rule exercises.

[Open Module 3 →](./Module%203/README.md)

### Module 4 — Pre-Layout Timing Analysis and Importance of Good Clock Tree

This module covers timing modelling using delay tables, grid-to-track and layout-to-LEF preparation, timing libraries, OpenSTA analysis with ideal clocks, setup time, jitter and uncertainty, synthesis optimization for setup violations, TritonCTS clock-tree synthesis, H-Tree buffering, crosstalk and clock shielding, and setup/hold analysis using real clocks.

[Open Module 4 →](./Module%204/README.md)

### Module 5 — Final Steps for RTL2GDS Using TritonRoute and OpenSTA

This module covers maze routing using Lee’s algorithm, DRC, power distribution network construction, power straps to standard-cell power, global and detail routing, TritonRoute configuration and features, route-guide handling, inter-guide connectivity, intra-/inter-layer routing, connectivity handling, routing topology, and post-route files.

[Open Module 5 →](./Module%205/README.md)

## Overall Workshop Flow

The five modules build a continuous physical-design workflow:

```text
Open-Source EDA / Sky130 PDK
            ↓
       OpenLANE / RTL2GDS
            ↓
        Synthesis Review
            ↓
         Floorplanning
            ↓
 Library Binding & Placement
            ↓
 Standard-Cell Design / Characterization
            ↓
    Timing Modelling / OpenSTA
            ↓
 Clock Tree Synthesis / TritonCTS
            ↓
  Real-Clock Setup & Hold Analysis
            ↓
       Power Distribution
            ↓
      Global / Detail Routing
            ↓
       TritonRoute / DRC
            ↓
        Post-Route Files
```

This sequence reflects the topics supplied for the five workshop modules; the repository is organized to make the progression and practical evidence easy to follow.

## Repository Structure

```text
Physical_Design_PD/
├── README.md
├── Module 1/
│   ├── Images/
│   │   └── <7 supplied practical figures>
│   └── README.md
│
├── Module 2/
│   ├── Images/
│   │   └── <10 supplied practical figures>
│   └── README.md
│
├── Module 3/
│   ├── Images/
│   │   └── <27 supplied practical figures>
│   └── README.md
│
├── Module 4/
│   ├── Images/
│   │   └── <27 supplied practical figures>
│   └── README.md
│
├── Module 5/
│   ├── Images/
│   │   └── <8 supplied practical figures>
│   └── README.md
```

## Tools and Technologies Referenced

- **OpenLANE / OpenLane** — RTL-to-GDS implementation flow
- **Sky130 PDK** — technology files and models used in the workshop
- **Magic** — layout viewing, extraction, and DRC-related work
- **ngspice** — SPICE simulation and inverter characterization
- **OpenSTA** — static timing analysis
- **TritonCTS** — clock-tree synthesis
- **TritonRoute** — routing
- **RePlAce** — congestion-aware placement
- **Linux / Ubuntu** — workshop environment

## Overall Learning Outcomes

After completing the five modules, the practical work provides exposure to:

1. Open-source EDA and the role of a PDK in digital ASIC implementation.
2. The OpenLANE RTL-to-GDS flow and its major stages.
3. Design preparation and synthesis-result review.
4. Chip floorplanning, utilization, aspect ratio, power planning, and pin placement.
5. Library binding, standard-cell placement, placement optimization, and congestion awareness.
6. CMOS inverter SPICE simulation and standard-cell layout/extraction.
7. Sky130 layout layers, technology files, and DRC-rule handling.
8. Timing libraries, delay tables, setup/hold analysis, jitter, and uncertainty.
9. Clock-tree synthesis, buffering, H-Tree concepts, crosstalk, and shielding.
10. Power distribution, global/detail routing, TritonRoute features, connectivity, DRC, and post-route outputs.

## Practical Evidence

Every supplied figure is retained in its module's `Images` directory and embedded in that module's README. This makes each module README function as both a topic summary and an image-based record of the practical work.

## Module Image Galleries

### Module 1 — Inception of Open-Source EDA, OpenLANE and Sky130 PDK

<details>
<summary>View all 7 practical figures</summary>

**Figure 1 — `chip area.png`**

![chip area.png](<Module%201/Images/chip%20area.png>)

**Figure 2 — `clk_ratio and percentage.png`**

![clk_ratio and percentage.png](<Module%201/Images/clk_ratio%20and%20percentage.png>)

**Figure 3 — `defulai clk period.png`**

![defulai clk period.png](<Module%201/Images/defulai%20clk%20period.png>)

**Figure 4 — `layer.png`**

![layer.png](<Module%201/Images/layer.png>)

**Figure 5 — `openlane.png`**

![openlane.png](<Module%201/Images/openlane.png>)

**Figure 6 — `specific to technolohy.png`**

![specific to technolohy.png](<Module%201/Images/specific%20to%20technolohy.png>)

**Figure 7 — `specific to tools.png`**

![specific to tools.png](<Module%201/Images/specific%20to%20tools.png>)

</details>

### Module 2 — Good Floorplan vs Bad Floorplan and Introduction to Library Cells

<details>
<summary>View all 10 practical figures</summary>

**Figure 1 — `design_name.png`**

![design_name.png](<Module%202/Images/design_name.png>)

**Figure 2 — `floorplan.png`**

![floorplan.png](<Module%202/Images/floorplan.png>)

**Figure 3 — `magic_floorplan.png`**

![magic_floorplan.png](<Module%202/Images/magic_floorplan.png>)

**Figure 4 — `magic_placement.png`**

![magic_placement.png](<Module%202/Images/magic_placement.png>)

**Figure 5 — `magic_placement_zoom out.png`**

![magic_placement_zoom out.png](<Module%202/Images/magic_placement_zoom%20out.png>)

**Figure 6 — `placement_standard_cells.png`**

![placement_standard_cells.png](<Module%202/Images/placement_standard_cells.png>)

**Figure 7 — `selected mask_layes _is_metal3.png`**

![selected mask_layes _is_metal3.png](<Module%202/Images/selected%20mask_layes%20_is_metal3.png>)

**Figure 8 — `selected_mask_layer_is_metal_2.png`**

![selected_mask_layer_is_metal_2.png](<Module%202/Images/selected_mask_layer_is_metal_2.png>)

**Figure 9 — `sky130A_sky130_fc_fd_hd.png`**

![sky130A_sky130_fc_fd_hd.png](<Module%202/Images/sky130A_sky130_fc_fd_hd.png>)

**Figure 10 — `synthesis_netlist.png`**

![synthesis_netlist.png](<Module%202/Images/synthesis_netlist.png>)

</details>

### Module 3 — Design Library Cell Using Magic Layout and ngspice Characterization

<details>
<summary>View all 27 practical figures</summary>

**Figure 1 — `CMOS_inverter_Threshold.png`**

![CMOS_inverter_Threshold.png](<Module%203/Images/CMOS_inverter_Threshold.png>)

**Figure 2 — `connectivity.png`**

![connectivity.png](<Module%203/Images/connectivity.png>)

**Figure 3 — `inverter_Layout.png`**

![inverter_Layout.png](<Module%203/Images/inverter_Layout.png>)

**Figure 4 — `pin_configuration _floorplan.png`**

![pin_configuration _floorplan.png](<Module%203/Images/pin_configuration%20_floorplan.png>)

**Figure 5 — `poly_silicon.png`**

![poly_silicon.png](<Module%203/Images/poly_silicon.png>)

**Figure 6 — `Pshort_model1.0.png`**

![Pshort_model1.0.png](<Module%203/Images/Pshort_model1.0.png>)

**Figure 7 — `selected_Ndiffusion.png`**

![selected_Ndiffusion.png](<Module%203/Images/selected_Ndiffusion.png>)

**Figure 8 — `set_floorplan.tcl.png`**

![set_floorplan.tcl.png](<Module%203/Images/set_floorplan.tcl.png>)

**Figure 9 — `sky130_inv_spice.png`**

![sky130_inv_spice.png](<Module%203/Images/sky130_inv_spice.png>)

**Figure 10 — `spic_deck.png`**

![spic_deck.png](<Module%203/Images/spic_deck.png>)

**Figure 11 — `Spice_values.png`**

![Spice_values.png](<Module%203/Images/Spice_values.png>)

**Figure 12 — `Spice_waveform.png`**

![Spice_waveform.png](<Module%203/Images/Spice_waveform.png>)

**Figure 13 — `Spice_waveform1.png`**

![Spice_waveform1.png](<Module%203/Images/Spice_waveform1.png>)

**Figure 14 — `Spice_wavefprm.png`**

![Spice_wavefprm.png](<Module%203/Images/Spice_wavefprm.png>)

**Figure 15 — `static_behaviour _cmos_inverter.png`**

![static_behaviour _cmos_inverter.png](<Module%203/Images/static_behaviour%20_cmos_inverter.png>)

**Figure 16 — `Static_Dynamic_Simulatoion.png`**

![Static_Dynamic_Simulatoion.png](<Module%203/Images/Static_Dynamic_Simulatoion.png>)

**Figure 17 — `Step_ 3 photo_resist.png`**

![Step_ 3 photo_resist.png](<Module%203/Images/Step_%203%20photo_resist.png>)

**Figure 18 — `Step_1 P_substrate.png`**

![Step_1 P_substrate.png](<Module%203/Images/Step_1%20P_substrate.png>)

**Figure 19 — `Step_10 fabrication.png`**

![Step_10 fabrication.png](<Module%203/Images/Step_10%20fabrication.png>)

**Figure 20 — `Step_2_sio2.png`**

![Step_2_sio2.png](<Module%203/Images/Step_2_sio2.png>)

**Figure 21 — `Step_4 N-well & P-well.png`**

![Step_4 N-well & P-well.png](<Module%203/Images/Step_4%20N-well%20%26%20P-well.png>)

**Figure 22 — `Step_5 Forming_Gate.png`**

![Step_5 Forming_Gate.png](<Module%203/Images/Step_5%20Forming_Gate.png>)

**Figure 23 — `Step_6 Source & Drain _formation.png`**

![Step_6 Source & Drain _formation.png](<Module%203/Images/Step_6%20Source%20%26%20Drain%20_formation.png>)

**Figure 24 — `Step_7 Forming_contacts.png`**

![Step_7 Forming_contacts.png](<Module%203/Images/Step_7%20Forming_contacts.png>)

**Figure 25 — `Step_8 Etched.png`**

![Step_8 Etched.png](<Module%203/Images/Step_8%20Etched.png>)

**Figure 26 — `Step_9 metal_formation.png`**

![Step_9 metal_formation.png](<Module%203/Images/Step_9%20metal_formation.png>)

**Figure 27 — `vtc_spic _simulation.png`**

![vtc_spic _simulation.png](<Module%203/Images/vtc_spic%20_simulation.png>)

</details>

### Module 4 — Pre-Layout Timing Analysis and Importance of Good Clock Tree

<details>
<summary>View all 27 practical figures</summary>

**Figure 1 — `Base.sdc.png`**

![Base.sdc.png](<Module%204/Images/Base.sdc.png>)

**Figure 2 — `Characterised for every cell.png`**

![Characterised for every cell.png](<Module%204/Images/Characterised%20for%20every%20cell.png>)

**Figure 3 — `Clock tree_synthesis.png`**

![Clock tree_synthesis.png](<Module%204/Images/Clock%20tree_synthesis.png>)

**Figure 4 — `Converting_ Grid_track.png`**

![Converting_ Grid_track.png](<Module%204/Images/Converting_%20Grid_track.png>)

**Figure 5 — `Create_clock.png`**

![Create_clock.png](<Module%204/Images/Create_clock.png>)

**Figure 6 — `Cross talk delta.png`**

![Cross talk delta.png](<Module%204/Images/Cross%20talk%20delta.png>)

**Figure 7 — `Edit_Cell _Y.png`**

![Edit_Cell _Y.png](<Module%204/Images/Edit_Cell%20_Y.png>)

**Figure 8 — `Edit_Cell_A.png`**

![Edit_Cell_A.png](<Module%204/Images/Edit_Cell_A.png>)

**Figure 9 — `Expand_cell.png`**

![Expand_cell.png](<Module%204/Images/Expand_cell.png>)

**Figure 10 — `Foreign_sky130_fc_hd_step 1.png`**

![Foreign_sky130_fc_hd_step 1.png](<Module%204/Images/Foreign_sky130_fc_hd_step%201.png>)

**Figure 11 — `Grid_activated.png`**

![Grid_activated.png](<Module%204/Images/Grid_activated.png>)

**Figure 12 — `Leafpad.png`**

![Leafpad.png](<Module%204/Images/Leafpad.png>)

**Figure 13 — `leakage_power.png`**

![leakage_power.png](<Module%204/Images/leakage_power.png>)

**Figure 14 — `MACRO sky130_vsdinv.png`**

![MACRO sky130_vsdinv.png](<Module%204/Images/MACRO%20sky130_vsdinv.png>)

**Figure 15 — `MACRO_sky130_dfstp4.png`**

![MACRO_sky130_dfstp4.png](<Module%204/Images/MACRO_sky130_dfstp4.png>)

**Figure 16 — `my_base_sdc.png`**

![my_base_sdc.png](<Module%204/Images/my_base_sdc.png>)

**Figure 17 — `OpenSTA_Prelayout_Timing_Analysis.png`**

![OpenSTA_Prelayout_Timing_Analysis.png](<Module%204/Images/OpenSTA_Prelayout_Timing_Analysis.png>)

**Figure 18 — `Placement_cell.png`**

![Placement_cell.png](<Module%204/Images/Placement_cell.png>)

**Figure 19 — `Placement_zoom_out.png`**

![Placement_zoom_out.png](<Module%204/Images/Placement_zoom_out.png>)

**Figure 20 — `Screenshot (38).png`**

![Screenshot (38).png](<Module%204/Images/Screenshot%20%2838%29.png>)

**Figure 21 — `Setup_analysis single clock.png`**

![Setup_analysis single clock.png](<Module%204/Images/Setup_analysis%20single%20clock.png>)

**Figure 22 — `Synthesis.png`**

![Synthesis.png](<Module%204/Images/Synthesis.png>)

**Figure 23 — `Track_info.png`**

![Track_info.png](<Module%204/Images/Track_info.png>)

**Figure 24 — `VGND_Metal6.png`**

![VGND_Metal6.png](<Module%204/Images/VGND_Metal6.png>)

**Figure 25 — `vim pre_sta.con.png`**

![vim pre_sta.con.png](<Module%204/Images/vim%20pre_sta.con.png>)

**Figure 26 — `Vim_My_base_sdc.png`**

![Vim_My_base_sdc.png](<Module%204/Images/Vim_My_base_sdc.png>)

**Figure 27 — `VPWR_Metal1.png`**

![VPWR_Metal1.png](<Module%204/Images/VPWR_Metal1.png>)

</details>

### Module 5 — Final Steps for RTL2GDS Using TritonRoute and OpenSTA

<details>
<summary>View all 8 practical figures</summary>

**Figure 1 — `Drc_clean.png`**

![Drc_clean.png](<Module%205/Images/Drc_clean.png>)

**Figure 2 — `MacroCELl_RAM.png`**

![MacroCELl_RAM.png](<Module%205/Images/MacroCELl_RAM.png>)

**Figure 3 — `openlane.png`**

![openlane.png](<Module%205/Images/openlane.png>)

**Figure 4 — `Parallel_Routing.png`**

![Parallel_Routing.png](<Module%205/Images/Parallel_Routing.png>)

**Figure 5 — `Printing_statics.png`**

![Printing_statics.png](<Module%205/Images/Printing_statics.png>)

**Figure 6 — `Route_Guide.png`**

![Route_Guide.png](<Module%205/Images/Route_Guide.png>)

**Figure 7 — `Routing.png`**

![Routing.png](<Module%205/Images/Routing.png>)

**Figure 8 — `Routing_topology.png`**

![Routing_topology.png](<Module%205/Images/Routing_topology.png>)

</details>

## Source Topic Coverage

The complete five-module topic coverage supplied for this repository is represented in the five module README files. The supplied reference README also identifies the module sequence and the major workshop areas from OpenLANE/Sky130 through floorplanning, cell design and characterization, timing, clock-tree synthesis, routing, and DRC.

## Author

**Physical Design Workshop Practical Work**
