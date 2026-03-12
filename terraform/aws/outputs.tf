output "config_bucket_name" {
  value = module.aws_baseline.config_bucket_name
}

output "trail_bucket_name" {
  value = module.aws_baseline.trail_bucket_name
}

output "config_recorder_name" {
  value = module.aws_baseline.config_recorder_name
}

output "cloudtrail_name" {
  value = module.aws_baseline.cloudtrail_name
}

output "security_hub_enabled" {
  value = module.aws_baseline.security_hub_enabled
}
