# VPN Config
variable "region" {
  type    = string
  default = "eu-west-1"
}
variable "vpc_id" {
  type    = string
  default = "vpc-aaaaaaaaaaa"
}
variable "amazon_side_asn" {
  type    = string
  default = "64570"
}

# Tags
variable "tag_name" {
  type    = string
  default = "Employee"
}
variable "tag_application" {
  type    = string
  default = "Workspace"
}
variable "tag_owner" {
  type    = string
  default = "Network"
}
variable "tag_costcenter" {
  type    = string
  default = "3517"
}
variable "tag_managedby" {
  type    = string
  default = "Terraform"
}