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

/*data "aws_iam_policy" "force_mfa" {
  arn = "arn:aws:iam::054669460988:policy/Force_MFA"
}*/