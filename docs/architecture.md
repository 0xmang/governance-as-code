# Architecture Overview

## Goal

This project demonstrates how to translate governance objectives into repeatable technical controls across AWS and Azure.

## Design principles

1. **Codified controls** rather than manual point-and-click setup
2. **Small but explainable baseline** suitable for a portfolio demonstration
3. **Use cloud-native governance services** to show platform fluency
4. **Preserve auditability** through logging, policy, and configuration monitoring
5. **Map controls to governance language** such as ISO/IEC 27001:2022

## High-level architecture

```mermaid
flowchart LR
    A[Terraform] --> B[AWS Governance Baseline]
    A --> C[Azure Governance Baseline]

    B --> B1[AWS Config]
    B --> B2[CloudTrail]
    B --> B3[Security Hub]
    B --> B4[Secure S3 Buckets]

    C --> C1[Azure Policy]
    C --> C2[Log Analytics Workspace]
    C --> C3[Diagnostic Settings]
    C --> C4[Hardened Storage Account]

    B1 --> D[Compliance Evidence]
    B2 --> D
    B3 --> D
    C1 --> D
    C2 --> D
    C3 --> D

    D --> E[ISO 27001 Governance Narrative]
```

## AWS control path

Terraform deploys a governance baseline consisting of:
- logging storage
- Config recorder and delivery channel
- CloudTrail
- Security Hub
- managed Config rules

The result is a simple but credible AWS governance story:
- record what changed
- monitor what exists
- detect certain insecure states
- centralize findings in native services

## Azure control path

Terraform deploys a governance baseline consisting of:
- policy definitions
- policy assignments
- log analytics workspace
- - hardened storage account configuration

The result is a simple but credible Azure governance story:
- define policy expectations
- assign them to a scope
- evaluate compliance continuously
- keep operational telemetry

## Why this matters from a governance perspective

Cloud governance often fails when controls are documented but not operationalized.
This architecture shows a practical model:

- policy intent becomes machine-readable definition
- infrastructure deployment becomes repeatable code
- control checking becomes platform-native evidence
- governance language becomes traceable to technical outcomes

## Suggested explanation in an interview

> I designed this lab to show that governance can be implemented as code rather than only described in policies. Terraform acts as the delivery mechanism, while AWS Config, Security Hub, CloudTrail, and Azure Policy provide the monitoring and enforcement layers. The final step is mapping those technical capabilities to a governance framework such as ISO 27001.

