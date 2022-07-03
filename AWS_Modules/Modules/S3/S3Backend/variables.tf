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