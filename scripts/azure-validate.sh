#!/usr/bin/env bash
set -euo pipefail

echo "=== Azure account ==="
az account show --output table

echo
read -rp "Enter resource group name: " RG
read -rp "Enter storage account name: " STORAGE

echo
echo "=== Resource group ==="
az group show --name "$RG" --output table

echo
echo "=== Storage account ==="
az storage account show --name "$STORAGE" --resource-group "$RG" --output table

echo
echo "=== Policy assignments at resource group scope ==="
az policy assignment list --scope "/subscriptions/$(az account show --query id -o tsv)/resourceGroups/$RG" --output table

echo
echo "=== Policy state summary at resource group scope ==="
az policy state summarize --resource-group "$RG" --output jsonc
