# Provider
provider "aws" {
  region  = var.region
  profile = "security"
}

# Module
module "tgw" {
  source = "../../../../../AWS_Modules/Modules/VPC/TransitGateway"
  region = var.region

  ram_share_tg       = var.ram_share_tg
  amazon_side_asn    = var.amazon_side_asn
  cgw_bgp_asn        = var.cgw_bgp_asn
  cgw1_ip_address    = var.cgw1_ip_address
  cgw2_ip_address    = var.cgw2_ip_address
  cgw_type           = var.cgw_type
  aws_remote_account = var.aws_remote_account
  tag_name           = var.tag_name
  tag_application    = var.tag_application
  tag_owner          = var.tag_owner
  tag_costcenter     = var.tag_costcenter
  tag_managedby      = var.tag_managedby
}