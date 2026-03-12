#!/usr/bin/env bash
set -euo pipefail

# Example only. Adjust to your environment.
# Option 1: standard credentials
aws sts get-caller-identity

# Option 2: if using AWS SSO, uncomment and edit
# aws configure sso
# aws sso login --profile my-sso-profile
# export AWS_PROFILE=my-sso-profile
# aws sts get-caller-identity
