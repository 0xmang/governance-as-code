#!/usr/bin/env bash
set -euo pipefail

echo "=== AWS caller identity ==="
aws sts get-caller-identity

echo
echo "=== AWS Config recorders ==="
aws configservice describe-configuration-recorders

echo
echo "=== AWS Config delivery channels ==="
aws configservice describe-delivery-channels

echo
echo "=== AWS Config rules ==="
aws configservice describe-config-rules

echo
echo "=== CloudTrail trails ==="
aws cloudtrail describe-trails --include-shadow-trails

echo
echo "=== Security Hub status ==="
aws securityhub describe-hub || echo "Security Hub may not be enabled or supported in this region."

echo
echo "=== S3 bucket public access blocks ==="
read -rp "Enter config bucket name: " CONFIG_BUCKET
read -rp "Enter trail bucket name: " TRAIL_BUCKET
aws s3api get-public-access-block --bucket "$CONFIG_BUCKET"
aws s3api get-public-access-block --bucket "$TRAIL_BUCKET"
