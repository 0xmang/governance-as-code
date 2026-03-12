variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used in naming"
  type        = string
  default     = "gac-lab"
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

variable "config_bucket_name" {
  description = "Globally unique S3 bucket name for AWS Config"
  type        = string
}

variable "trail_bucket_name" {
  description = "Globally unique S3 bucket name for CloudTrail"
  type        = string
}

variable "enable_security_hub" {
  description = "Whether to enable AWS Security Hub"
  type        = bool
  default     = true
}
