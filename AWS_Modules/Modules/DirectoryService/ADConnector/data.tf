# Data
data "aws_availability_zones" "available" {}

data "aws_ssm_parameter" "adconnect" {
  name = "/production/workspace/adconnector/password"
}

data "aws_iam_policy_document" "workspaces" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["workspaces.amazonaws.com"]
    }
  }
}