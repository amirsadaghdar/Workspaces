# Data
data "aws_availability_zones" "available" {
  provider = aws.workspace

  state = "available"
}

data "aws_caller_identity" "workspace" {
  provider = aws.workspace
}