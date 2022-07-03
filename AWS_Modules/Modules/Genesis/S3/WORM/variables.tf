# S3 Config
variable "region" {
  type = string
}
variable "aws_bucket_name" {
  type = string
}

# WORM
variable "worm_mode" {
  type = string
}
variable "worm_years" {
  type = number
}

variable "worm_expiration_days" {
  type = number
}
variable "worm_noncurrent_version_expiration" {
  type = number
}
variable "worm_abort_incomplete_multipart_upload" {
  type = number
}

#Tags
variable "tags" {
  type        = map(any)
  description = "The tags to be applied to the resources"
}
