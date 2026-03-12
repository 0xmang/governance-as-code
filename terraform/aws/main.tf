module "aws_baseline" {
  source = "./modules/aws_baseline"

  project_name        = var.project_name
  environment         = var.environment
  config_bucket_name  = var.config_bucket_name
  trail_bucket_name   = var.trail_bucket_name
  enable_security_hub = var.enable_security_hub
}
