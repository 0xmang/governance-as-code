# ISO/IEC 27001:2022 Mapping

## Important note

This mapping is **illustrative** and intended for portfolio/demo purposes.
It shows how the implemented cloud controls support governance objectives commonly associated with ISO/IEC 27001:2022 and Annex A themes.

It does **not** mean this environment is certified or fully compliant.

## Control mapping table

| Project component | Governance objective | ISO 27001-aligned theme | Explanation |
|---|---|---|---|
| Terraform-managed baseline | Standardized, repeatable control deployment | Change management, secure configuration, documented operations | Infrastructure changes are codified and repeatable rather than ad hoc. |
| AWS Config | Ongoing configuration assessment | Monitoring activities, technical vulnerability/configuration oversight | Detects when selected resources drift from expected configuration states. |
| AWS CloudTrail | Auditability and accountability | Logging and monitoring | Captures API activity for traceability and investigation support. |
| AWS Security Hub | Consolidated security posture visibility | Security monitoring and event management | Aggregates findings to support governance oversight. |
| S3 encryption and public access blocking | Information protection | Access control, data protection | Helps reduce accidental exposure of governance data. |
| Azure Policy definitions and assignments | Preventive/detective control enforcement | Secure configuration, governance rules | Codifies expected resource behavior and checks compliance at scope. |
| Azure Log Analytics Workspace | Operational visibility | Logging and monitoring | Stores diagnostic and operational signals. |
| Resource tagging | Ownership and asset structure | Asset management | Helps identify ownership, environment, and governance context. |
| Naming conventions | Standardization | Operational control and consistency | Improves manageability, traceability, and reviewability. |

## How to talk about this mapping

A strong way to explain the mapping is:

> ISO 27001 tells us what kinds of controls and management outcomes matter, while Terraform, AWS Config, CloudTrail, Security Hub, and Azure Policy give us practical ways to operationalize those goals in the cloud.

## Suggested extensions for stronger alignment

If you want to strengthen the governance story later, add:

- key management controls using AWS KMS and Azure Key Vault
- secret management controls using Secrets Manager or Key Vault secrets
- CI/CD policy gates using Sentinel, OPA, or Checkov
- backup controls and recovery testing evidence
- role-based access controls and least privilege examples
- evidence export and retention policies

