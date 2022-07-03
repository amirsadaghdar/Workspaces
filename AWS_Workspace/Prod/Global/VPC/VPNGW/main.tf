# Provider
provider "aws" {
  region  = var.region
  profile = "workspace"
}

# Module
module "vpn_gw" {
  source          = "../../../../../AWS_Modules/Modules/VPC/VPNGW"
  region          = var.region
  vpc_id          = var.vpc_id
  amazon_side_asn = var.amazon_side_asn
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}
