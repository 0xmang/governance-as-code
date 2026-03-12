output "resource_group_name" {
  value = module.azure_baseline.resource_group_name
}

output "storage_account_name" {
  value = module.azure_baseline.storage_account_name
}

output "log_analytics_workspace_name" {
  value = module.azure_baseline.log_analytics_workspace_name
}

output "policy_definition_names" {
  value = module.azure_baseline.policy_definition_names
}

output "policy_assignment_names" {
  value = module.azure_baseline.policy_assignment_names
}
