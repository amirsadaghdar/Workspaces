# S3 Bucket Config
variable "region" {
  type = string
}
variable "aws_bucket_name" {
  type = string
}
variable "aws_user_name" {
  type = string
}

# Tags
variable "tag_name" {
  type = string
}
variable "tag_application" {
  type = string
}
variable "tag_owner" {
  type = string
}
variable "tag_costcenter" {
  type = string
}
variable "tag_managedby" {
  type = string
}