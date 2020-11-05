module "aws_logs" {
  source = "../../"

  s3_bucket_name          = var.test_name
  guardduty_logs_prefixes = var.guardduty_logs_prefixes
  region                  = var.region
  allow_guardduty         = true
  default_allow           = false

  force_destroy = var.force_destroy
}
