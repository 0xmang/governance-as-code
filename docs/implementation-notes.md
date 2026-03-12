# Implementation Notes

## Why this project is intentionally modest in scope

This project is not trying to replicate a full enterprise landing zone.
Instead, it focuses on a clear portfolio story:

- governance intent
- codified implementation
- validation steps
- standards mapping

That makes it easier to understand, explain, and maintain.

## AWS implementation choices

- **AWS Config** was selected to show configuration monitoring.
- **CloudTrail** was selected to show audit logging.
- **Security Hub** was selected to show consolidated posture visibility.
- **Managed Config rules** were selected because they are recognizable and easy to explain.

## Azure implementation choices

- **Azure Policy** was selected to show Policy-as-Code and guardrail assignment.
- **Log Analytics Workspace** was selected to represent operational visibility.
- **Diagnostic settings** were selected to show telemetry enablement.
- **Storage account hardening** was selected because it is simple, visible, and relevant to governance.
