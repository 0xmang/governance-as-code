locals {
  tags = {
    Project     = var.project_name
    Environment = var.environment
    Owner       = var.owner
    ManagedBy   = "Terraform"
    Purpose     = "GovernanceAsCode"
  }
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.tags
}

resource "azurerm_log_analytics_workspace" "main" {
  name                = var.log_analytics_workspace_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = local.tags
}

resource "azurerm_storage_account" "main" {
  name                            = var.storage_account_name
  resource_group_name             = azurerm_resource_group.main.name
  location                        = azurerm_resource_group.main.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  min_tls_version                 = "TLS1_2"
  account_kind                    = "StorageV2"
  public_network_access_enabled   = true
  shared_access_key_enabled       = true
  allow_nested_items_to_be_public = false
  https_traffic_only_enabled      = true
  tags                            = local.tags

  blob_properties {
    versioning_enabled = true
    delete_retention_policy {
      days = 7
    }
  }
}

resource "azurerm_policy_definition" "require_storage_https_only" {
  name         = "require-storage-https-only-${var.environment}"
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = "Require HTTPS-only for storage accounts (${var.environment})"
  description  = "Custom policy created by the Governance-as-Code lab."
  policy_rule  = file("${path.module}/../../policies/require-storage-https-only.json")
  metadata     = file("${path.module}/../../policies/initiative-metadata.json")
}

resource "azurerm_policy_definition" "deny_public_storage_access" {
  name         = "deny-public-storage-access-${var.environment}"
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = "Deny public blob access on storage accounts (${var.environment})"
  description  = "Custom policy created by the Governance-as-Code lab."
  policy_rule  = file("${path.module}/../../policies/deny-public-storage-access.json")
  metadata     = file("${path.module}/../../policies/initiative-metadata.json")
}

resource "azurerm_policy_set_definition" "governance_baseline" {
  name         = "gac-baseline-${var.environment}"
  policy_type  = "Custom"
  display_name = "Governance-as-Code Baseline (${var.environment})"
  description  = "A small portfolio baseline of Azure governance controls."
  metadata     = file("${path.module}/../../policies/initiative-metadata.json")

  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.require_storage_https_only.id
    reference_id         = "RequireStorageHttpsOnly"
  }

  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.deny_public_storage_access.id
    reference_id         = "DenyPublicStorageAccess"
  }
}

resource "azurerm_resource_group_policy_assignment" "baseline_assignment" {
  name                 = "assign-gac-baseline-${var.environment}"
  display_name         = "Assign Governance-as-Code Baseline (${var.environment})"
  policy_definition_id = azurerm_policy_set_definition.governance_baseline.id
  resource_group_id    = azurerm_resource_group.main.id
  location             = azurerm_resource_group.main.location
  description          = "Assigns the portfolio governance baseline to the lab resource group."

  identity {
    type = "SystemAssigned"
  }
}
