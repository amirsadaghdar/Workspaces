# VPC Config
variable "region" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "amazon_side_asn" {
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