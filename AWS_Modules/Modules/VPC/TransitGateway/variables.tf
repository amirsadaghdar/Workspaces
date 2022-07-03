# Transit Gateway Config
variable "region" {
  type = string
}
variable "ram_share_tg" {
  type = string
}
variable "amazon_side_asn" {
  type = number
}
variable "cgw_bgp_asn" {
  type = number
}
variable "cgw1_ip_address" {
  type = string
}
variable "cgw2_ip_address" {
  type = string
}
variable "cgw_type" {
  type = string
}
variable "aws_remote_account" {
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