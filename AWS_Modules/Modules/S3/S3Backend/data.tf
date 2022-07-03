# Data
data "aws_caller_identity" "current" {}

data "template_file" "state_policy_file" {
  template = file("${path.module}/policy.json")

  vars = {
    bucket_name     = var.aws_bucket_name
    caller_identity = data.aws_caller_identity.current.arn
  }
}