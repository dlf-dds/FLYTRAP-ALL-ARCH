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

    ![EXFLYTRAP-BASELINE-REALOPS.png](baseline/EXFLYTRAP-BASELINE-REALOPS.png)
    
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

- **full picture: all the data flows established in EX FLY TRAP**  
    Demonstrates collaboration with many data brokering and command and control systems.

    ![full.png](simplified/EXFLYTRAP-FULL-PICTURE.png)
    
    [Download EXFLYTRAP-FULL-PICTURE.drawio](global/core4rce/EXFLYTRAP-FULL-PICTURE.drawio)

- **full picture with status**  
    Demonstrates our progress in establishing data flows coming out of EX FLYTRAP 3.0, leading into 4.0.

    ![full.png](simplified/EXFLYTRAP-FULL-with-status.png)
    
    [Download EXFLYTRAP-FULL-with-status.drawio](global/core4rce/EXFLYTRAP-FULL-with-status.drawio)

---
**File Reference:**  
- `.drawio` files: Source diagrams  
- `.png` files: Rendered images for quick reference