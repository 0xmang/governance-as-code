output "config_bucket_name" {
  value = aws_s3_bucket.config.bucket
}

output "trail_bucket_name" {
  value = aws_s3_bucket.trail.bucket
}

output "config_recorder_name" {
  value = aws_config_configuration_recorder.main.name
}

output "cloudtrail_name" {
  value = aws_cloudtrail.main.name
}

output "security_hub_enabled" {
  value = var.enable_security_hub
}
