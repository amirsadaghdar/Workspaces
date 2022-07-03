# S3 Config
variable "region" {
  default = "eu-west-1"
}
variable "aws_bucket_name" {
  default = "tf-state-files-security-prod"
}
variable "aws_dynamo_db" {
  default = "tf-state-locks-security-prod"
}

# Tags
variable "tag_name" {
  default = "tf-state-files"
}
variable "tag_application" {
  default = "security"
}
variable "tag_owner" {
  default = "Infra"
}
variable "tag_costcenter" {
  default = "3517"
}
variable "tag_managedby" {
  default = "Terraform"
}