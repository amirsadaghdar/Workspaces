# Transit Gateway Config
variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "ram_share_tg" {
  type    = string
  default = "TGW-RAM"
}
variable "amazon_side_asn" {
  type    = number
  default = 64536
}
variable "cgw_bgp_asn" {
  type    = number
  default = 65000
}
variable "cgw1_ip_address" {
  type    = string
  default = "54.154.219.75"
}
variable "cgw2_ip_address" {
  type    = string
  default = "63.32.226.244"
}
variable "cgw_type" {
  type    = string
  default = "ipsec.1"
}
variable "aws_remote_account" {
  type    = string
  default = "021690202536"
}

# Tags
variable "tag_name" {
  type    = string
  default = "Security"
}
variable "tag_application" {
  type    = string
  default = "Shared Security"
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