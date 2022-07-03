# Provider
provider "aws" {
  region  = var.region
  profile = "workspace"
}

# Module
module "ld4_vif1" {
  source          = "../../../../../AWS_Modules/Modules/DirectConnect/VirtualInterface"
  region          = var.region
  address_family  = var.address_family
  vpn_gateway_id  = local.vgw_id
  connection_id   = var.connection_id_LD4_vif1
  vif_name        = var.vif_name_LD4_vif1
  vlan            = var.vlan_LD4_vif1
  bgp_asn         = var.bgp_asn_LD4_vif1
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

module "ld4_vif2" {
  source          = "../../../../../AWS_Modules/Modules/DirectConnect/VirtualInterface"
  region          = var.region
  address_family  = var.address_family
  vpn_gateway_id  = local.vgw_id
  connection_id   = var.connection_id_LD4_vif2
  vif_name        = var.vif_name_LD4_vif2
  vlan            = var.vlan_LD4_vif2
  bgp_asn         = var.bgp_asn_LD4_vif2
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

module "inx_vif1" {
  source          = "../../../../../AWS_Modules/Modules/DirectConnect/VirtualInterface"
  region          = var.region
  address_family  = var.address_family
  vpn_gateway_id  = local.vgw_id
  connection_id   = var.connection_id_INX_vif1
  vif_name        = var.vif_name_INX_vif1
  vlan            = var.vlan_INX_vif1
  bgp_asn         = var.bgp_asn_INX_vif1
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

module "inx_vif2" {
  source          = "../../../../../AWS_Modules/Modules/DirectConnect/VirtualInterface"
  region          = var.region
  address_family  = var.address_family
  vpn_gateway_id  = local.vgw_id
  connection_id   = var.connection_id_INX_vif2
  vif_name        = var.vif_name_INX_vif2
  vlan            = var.vlan_INX_vif2
  bgp_asn         = var.bgp_asn_INX_vif2
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}