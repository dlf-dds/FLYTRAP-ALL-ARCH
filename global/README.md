# Global Data Flow Diagrams

## Overview
This document outlines the various data flow diagrams that illustrate how information moves between systems. Each diagram can be found in its respective subdirectory along with a README.md file explaining its purpose and details.

## Current Global Data Flow Initiatives

### Commercial & Partner Infrastructure
These flows establish connectivity with commercial partners and security frameworks:
- **core4ce** - Commercial data service integration
- **CIS-EN PQC** - Post-Quantum Cryptography enhanced security framework

### Joint Cross-Classification Data Flows
These flows operate across multiple classification levels to support joint operations:
- **UDL mainline** - High-level view of Unified Data Library connections to multiple consumers
- **UDL to JFN** - Data flow from UDL to Joint Fires Network and processes inside of the JFN
- **UDL to Project Overmatch** - Integration with Navy's Project Overmatch initiative

### Theater-Centric Global Distribution
These flows support European operations with NATO and partner sharing capabilities:
- **USAREUR TDP mainline** - High-level view of USAREUR Theater Data Platform to multiple consumers
- **USAREUR TDP to NGC2** - Connection to NGC2 
- **USAREUR TDP to NGA's MSS IL6 and the MPN HOSTED MSS** - National Geospatial-Intelligence Agency's MSS integration, which is actively used for operations in every GCC.
- **USAREUR TDP to TAC SIPR TDP** - Tactical SIPR Theater Data Platform connection (which enables further connections and use cases.)
- **USAREUR TDP to GCCS to NATO Allies** - NATO alliance data sharing through GCCS

### Additional Data Source Integration
Beyond Sky Fortress data, incorporating:
- **FOCUS Pre-fusion and Pre-filtering Data to Azure IL4** - Processing unclassified, tactical data sources 
- **Relativity Space Data into appropriate IL** - Integration of cutting edge, commercial  autonomous systems data

## Future Initiatives
*Note: These initiatives are out of scope for JOINT EX FLYTRAP / VANNEHEIM but are planned for future implementation.*

### Advanced Data Observability and Machine Learning
- **Observability for all Data Sources** - Implementing monitoring across data pathways
- **Extending the Observability Pipeline into a universal data lake for autonomous systems** - Creating unified data storage
- **Extending the universal data lake into a historical training environment** - Building reinforcement learning capabilities
- **Applying Reinforcement Learning to live operations for autonomous systems** - Operational AI integration

## Global Data Flow Lines of Effort (LOEs) In Development
- **Commercial Cloud Directly to the Nett Warrior Cloud** - Direct tactical edge integration
- **Commercial Cloud into Catalyst and Directly to Mission Partners** - Streamlining partner access

## Unclassified Data Sharing
We aim to enable sharing and insights from Sky Fortress Acoustic Sensor and similar unclassified data sources at the lowest classification level possible, using commercial transport with zero trust security practices. [Catalyst](https://github.com/orbisoperations/catalyst) will be evaluated as the main supporting framework for this capability.