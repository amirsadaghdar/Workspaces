# Data
data "aws_availability_zones" "available" {}
data "aws_iam_policy" "iam_policy" {
  arn = "arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess"
}

data "template_file" "role_file" {
  template = file("${path.module}/role.json")
}