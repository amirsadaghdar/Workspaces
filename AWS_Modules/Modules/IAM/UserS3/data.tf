# Data
data "aws_availability_zones" "available" {}

data "template_file" "policy_file" {
  template = file("${path.module}/policy.json")

  vars = {
    s3_bucket = var.s3_bucket
  }
}