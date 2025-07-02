# FLYTRAP-ALL-ARCH

**[DEV README.md](DEVREADME.md)**

[![Draw.io diagram check](https://github.com/dlf-dds/FLYTRAP-ALL-ARCH/actions/workflows/diagrams.yml/badge.svg)](https://github.com/dlf-dds/FLYTRAP-ALL-ARCH/actions/workflows/diagrams.yml)


## Network Architecture Overview

At JOINT EX FLYTRAP / VANAHEIM, the following diagrams illustrate how the network operates and how data flows both locally and globally. Refer to the `.drawio` files as authoritative sources; the `.png` images are generated from these files.

### Baseline

- **baseline**  
    Shows the core networking and architecture at EX FLYTRAP.

    ![EXFLYTRAP-BASELINE.png](baseline/EXFLYTRAP-BASELINE.png)
    
    [Download EXFLYTRAP-BASELINE.drawio](baseline/EXFLYTRAP-BASELINE.drawio)

- **baseline-realops**  
    Illustrates the architecture with more than one 2CR SQDN. Note: these cannot communicate directly with each other—they must route up and out into the Nett Warrior cloud and back.

    ![EXFLYTRAP-BASELINE-REALOPS.png](baseline/EXFLYTRAP-DATAPIPES-REALOPS.png)
    
    [Download EXFLYTRAP-BASELINE-REALOPS.drawio](baseline/EXFLYTRAP-BASELINE-REALOPS.drawio)

### Simplified

- **simplified-wideview-core**  
    Presents the core EX FLYTRAP architecture in a condensed form, preparing it for global data flow presentation.

    ![EXFLYTRAP-SIMPLIFIED.png](simplified/EXFLYTRAP-SIMPLIFIED.png)
    
    [Download EXFLYTRAP-SIMPLIFIED.drawio](simplified/EXFLYTRAP-SIMPLIFIED.drawio)

### Global

See GLobal Data Flow Diagrams in separate README files nearest to the diagram, for a broader view of how data is shared and utilized across different environments.

[Global Data Flow Diagrams](global/README.md)
As an example, here is one of the global data flow diagrams:

- **wideview-core4ce**  
    Demonstrates collaboration with core4ce to enrich data with operationally relevant information, expedite its return to the warfighter, and share it with other environments for broader learning and action.

    ![core4ce.png](global/core4ce/EXFLYTRAP-Core4ce.png)
    
    [Download EXFLYTRAP-Core4ce.drawio](global/core4rce/EXFLYTRAP-Core4ce.drawio)



---
**File Reference:**  
- `.drawio` files: Source diagrams  
- `.png` files: Rendered images for quick reference