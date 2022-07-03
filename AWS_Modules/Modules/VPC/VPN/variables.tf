# Transit Gateway Config
variable "region" {
  type = string
}
variable "aws_customer_gateway1_id" {
  type = string
}
variable "aws_customer_gateway2_id" {
  type = string
}
variable "aws_ec2_transit_gateway_id" {
  type = string
}
variable "cgw_type" {
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