# Data
data "aws_availability_zones" "available" {}
data "aws_caller_identity" "current" {}

data "template_file" "s3_policy_file" {
  template = file("${path.module}/${var.aws_iam_policy}")

  vars = {
    aws_bucket_name = var.aws_bucket_name
    aws_iam_name    = var.aws_iam_name
  }
}