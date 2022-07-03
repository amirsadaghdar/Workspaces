# IAM user config
variable "region" {
  type = string
}
variable "aws_bucket_name" {
  type = string
}
variable "netapp_username" {
  type = string
}
variable "netapp_groupname" {
  type = string
}

variable "tags" {
  type        = map(any)
  description = "The tags to be applied to the resources"
}
