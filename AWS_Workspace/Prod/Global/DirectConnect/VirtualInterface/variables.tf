# AD Connector Config
variable "region" {
  type    = string
  default = "eu-west-1"
}
variable "address_family" {
  type    = string
  default = "ipv4"
}
variable "vpn_gateway_id" {
  type    = string
  default = "vgw-0d6a07886c9c1b6ac"
}

# LD4-vif1
variable "connection_id_LD4_vif1" {
  type    = string
  default = "dxcon-fgv9548s"
}
variable "vif_name_LD4_vif1" {
  type    = string
  default = "LD4-vif1"
}
variable "vlan_LD4_vif1" {
  type    = string
  default = "1304"
}
variable "bgp_asn_LD4_vif1" {
  type    = string
  default = "40992"
}

# LD4-vif2
variable "connection_id_LD4_vif2" {
  type    = string
  default = "dxcon-fgfho3tf"
}
variable "vif_name_LD4_vif2" {
  type    = string
  default = "LD4-vif2"
}
variable "vlan_LD4_vif2" {
  type    = string
  default = "1301"
}
variable "bgp_asn_LD4_vif2" {
  type    = string
  default = "40992"
}


# INX-vif1
variable "connection_id_INX_vif1" {
  type    = string
  default = "dxcon-fhdfj60m"
}
variable "vif_name_INX_vif1" {
  type    = string
  default = "INX-vif1"
}
variable "vlan_INX_vif1" {
  type    = string
  default = "44"
}
variable "bgp_asn_INX_vif1" {
  type    = string
  default = "205767"
}


# INX-vif2
variable "connection_id_INX_vif2" {
  type    = string
  default = "dxcon-fg97sa39"
}
variable "vif_name_INX_vif2" {
  type    = string
  default = "INX-vif2"
}
variable "vlan_INX_vif2" {
  type    = string
  default = "50"
}
variable "bgp_asn_INX_vif2" {
  type    = string
  default = "205767"
}


# Tags
variable "tag_name" {
  type    = string
  default = "DirectConnect"
}
variable "tag_application" {
  type    = string
  default = "Workspace"
}
variable "tag_owner" {
  type    = string
  default = "Infra"
}
variable "tag_costcenter" {
  type    = string
  default = "3517"
}
variable "tag_managedby" {
  type    = string
  default = "Terraform"
}