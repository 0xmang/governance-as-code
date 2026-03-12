module "azure_baseline" {
  source = "./modules/azure_baseline"

  subscription_id              = var.subscription_id
  location                     = var.location
  project_name                 = var.project_name
  environment                  = var.environment
  owner                        = var.owner
  resource_group_name          = var.resource_group_name
  log_analytics_workspace_name = var.log_analytics_workspace_name
  storage_account_name         = var.storage_account_name
}
