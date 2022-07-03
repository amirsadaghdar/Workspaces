# S3 Config
variable "region" {
  type = string
}
variable "aws_bucket_name" {
  type = string
}
variable "aws_dynamo_db" {
  type = string
}

variable "tags" {
  type        = map(any)
  description = "The tags to be applied to the resources"
}
