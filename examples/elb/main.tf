module "aws_logs" {
  source = "../../"

  s3_bucket_name  = var.test_name
  elb_logs_prefix = var.elb_logs_prefix
  allow_elb       = true
  default_allow   = false

  force_destroy = var.force_destroy
}

resource "aws_elb" "test_elb" {
  name    = var.test_name
  subnets = module.vpc.public_subnets

  access_logs {
    bucket        = module.aws_logs.aws_logs_bucket
    bucket_prefix = var.elb_logs_prefix
    enabled       = true
  }

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}

module "vpc" {
  source         = "terraform-aws-modules/vpc/aws"
  version        = "~> 2"
  name           = var.test_name
  cidr           = "10.0.0.0/16"
  azs            = var.vpc_azs
  public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}
