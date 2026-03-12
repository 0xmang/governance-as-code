#!/usr/bin/env bash
set -euo pipefail

OUTDIR="evidence-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$OUTDIR"

echo "Create this folder and drop in screenshots such as:"
echo "- AWS Config dashboard"
echo "- AWS Security Hub overview"
echo "- CloudTrail trail details"
echo "- Azure Policy compliance overview"
echo "- Azure storage account configuration"
echo "- Terraform plan/apply screenshots"

echo "Project evidence folder created: $OUTDIR"
