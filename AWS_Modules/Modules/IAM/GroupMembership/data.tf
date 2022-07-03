# Data
data "aws_availability_zones" "available" {}

data "aws_iam_policy" "read_only_policy" {
  arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

data "aws_iam_policy" "access_support_policy" {
  arn = "arn:aws:iam::aws:policy/AWSSupportAccess"
}

data "aws_iam_policy" "administrator_access" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
