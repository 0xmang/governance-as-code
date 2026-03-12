output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "storage_account_name" {
  value = azurerm_storage_account.main.name
}

output "log_analytics_workspace_name" {
  value = azurerm_log_analytics_workspace.main.name
}

output "policy_definition_names" {
  value = [
    azurerm_policy_definition.require_storage_https_only.name,
    azurerm_policy_definition.deny_public_storage_access.name
  ]
}

output "policy_assignment_names" {
  value = [
    azurerm_resource_group_policy_assignment.baseline_assignment.name
  ]
}
