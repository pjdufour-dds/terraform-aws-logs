module "aws_logs" {
  source         = "../../"
  s3_bucket_name = var.test_name
  region         = var.region
  force_destroy  = var.force_destroy
}

resource "aws_cloudtrail" "main" {
  name           = var.test_name
  s3_bucket_name = module.aws_logs.aws_logs_bucket
  s3_key_prefix  = "cloudtrail"
}

