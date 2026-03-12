variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "project_name" {
  description = "Project name used in resource naming"
  type        = string
  default     = "gaclab"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner tag"
  type        = string
  default     = "your-name"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-gac-lab-dev"
}

variable "log_analytics_workspace_name" {
  description = "Log Analytics Workspace name"
  type        = string
  default     = "law-gac-lab-dev"
}

variable "storage_account_name" {
  description = "Globally unique lowercase storage account name"
  type        = string
}
