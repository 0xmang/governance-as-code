# Demo Script

## 1. Open with the problem

“Cloud environments can drift quickly when governance is manual. I built this project to show how governance requirements can be translated into repeatable cloud controls using Terraform.”

## 2. Explain the scope

“This is a portfolio-scale multi-cloud Governance-as-Code lab across AWS and Azure. It focuses on foundational controls: logging, policy enforcement, configuration monitoring, and evidence generation.”

## 3. Walk through AWS

Show the following:
- Terraform files in `terraform/aws`
- S3 bucket for governance evidence
- AWS Config recorder and delivery channel
- CloudTrail trail
- Security Hub enabled
- AWS Config rules

Say:

“AWS gives me three useful governance signals here: resource change history, compliance results, and centralized security findings.”

## 4. Walk through Azure

Show the following:
- Terraform files in `terraform/azure`
- Custom Azure Policy definitions
- Policy assignments
- Log Analytics Workspace
- Storage account configured with governance-friendly defaults

Say:

“On Azure, I focused on Policy-as-Code, scope assignment, and compliance visibility to show how guardrails can be applied consistently.”

## 5. Show the standards angle

Open `docs/iso27001-mapping.md`.

Say:

“I’m not claiming this small lab equals certification. The point is to demonstrate that technical controls can be intentionally mapped to governance objectives such as secure configuration, logging, monitoring, and asset control.”

## 6. Explain what you would do next in production

Suggested answer:
- add CI/CD checks for Terraform
- enforce approvals and separation of duties
- add policy exemptions workflow
- add centralized evidence export
- extend to AWS Organizations and Azure management groups
- integrate with ticketing and dashboards

## 7. Close strongly

“This project demonstrates not only Terraform usage, but also how to think like a governance engineer: starting from control intent, codifying guardrails, validating results, and presenting evidence in a way leadership or auditors can understand.”

