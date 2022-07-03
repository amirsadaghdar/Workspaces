# Data
data "aws_availability_zones" "available" {}
data "aws_caller_identity" "current" {}
data "aws_s3_bucket" "s3_bucket" {
  bucket = var.aws_bucket_name
}