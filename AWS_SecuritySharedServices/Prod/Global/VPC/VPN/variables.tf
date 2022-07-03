# VPN Config
variable "region" {
  type    = string
  default = "eu-west-1"
}
variable "aws_customer_gateway1_id" {
  type    = string
  default = "cgw-0f36ac45a19610593"
}
variable "aws_customer_gateway2_id" {
  type    = string
  default = "cgw-0309dbce4557bc561"
}
variable "aws_ec2_transit_gateway_id" {
  type    = string
  default = "tgw-0364dd219929702d9"
}
variable "cgw_type" {
  type    = string
  default = "ipsec.1"
}

# Tags
variable "tag_name_cryptocurrency" {
  type    = string
  default = "CryptoCurrency"
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