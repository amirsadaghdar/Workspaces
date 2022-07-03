# Provider
provider "aws" {
  region  = var.region
  profile = "security"
}

# Module
module "vpc_security" {
  source                = "../../../../../AWS_Modules/Modules/VPC/VPC_4SN_Private"
  region                = var.region
  network_address_space = var.network_address_space_security
  subnet1_address_space = var.security_subnet1_address_space
  subnet2_address_space = var.security_subnet2_address_space
  subnet3_address_space = var.security_subnet3_address_space
  subnet4_address_space = var.security_subnet4_address_space
  tag_name              = var.tag_name_vpc_security
  tag_application       = var.tag_application
  tag_owner             = var.tag_owner
  tag_costcenter        = var.tag_costcenter
  tag_managedby         = var.tag_managedby
}
