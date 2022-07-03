# AD Connector Config
variable "region" {
  type = string
}
variable "connection_id" {
  type = string
}
variable "vif_name" {
  type = string
}
variable "vlan" {
  type = string
}
variable "address_family" {
  type = string
}
variable "bgp_asn" {
  type = string
}
variable "vpn_gateway_id" {
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