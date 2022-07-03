# Data
data "aws_availability_zones" "available" {}
data "aws_caller_identity" "current" {}

data "template_file" "s3_policy_file" {
  template = file("${path.module}/policy.json")

  vars = {
    bucket_name = var.aws_bucket_name
    user_name   = var.aws_user_name
  }
}