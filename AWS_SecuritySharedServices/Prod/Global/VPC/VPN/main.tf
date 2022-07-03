# Provider
provider "aws" {
  region  = var.region
  profile = "security"
}

# Module
module "vpn_cryptocurrency" {
  source                     = "../../../../../AWS_Modules/Modules/VPC/VPN"
  region                     = var.region
  aws_customer_gateway1_id   = var.aws_customer_gateway1_id
  aws_customer_gateway2_id   = var.aws_customer_gateway2_id
  aws_ec2_transit_gateway_id = var.aws_ec2_transit_gateway_id
  cgw_type                   = var.cgw_type
  tag_name                   = var.tag_name_cryptocurrency
  tag_application            = var.tag_application
  tag_owner                  = var.tag_owner
  tag_costcenter             = var.tag_costcenter
  tag_managedby              = var.tag_managedby
}
