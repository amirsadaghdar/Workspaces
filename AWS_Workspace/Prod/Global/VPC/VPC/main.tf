# Provider
provider "aws" {
  region  = var.region
  profile = "workspace"
}

# Module
module "vpc_contractor1" {
  source                = "../../../../../AWS_Modules/Modules/VPC/VPC_4SN_Private"
  region                = var.region
  network_address_space = var.network_address_space_contractor1
  subnet1_address_space = var.contractor1_subnet1_address_space
  subnet2_address_space = var.contractor1_subnet2_address_space
  subnet3_address_space = var.contractor1_subnet3_address_space
  subnet4_address_space = var.contractor1_subnet4_address_space
  tag_name              = var.tag_name_vpc_contractor1
  tag_application       = var.tag_application
  tag_owner             = var.tag_owner
  tag_costcenter        = var.tag_costcenter
  tag_managedby         = var.tag_managedby
}

module "vpc_employee" {
  source                = "../../../../../AWS_Modules/Modules/VPC/VPC_4SN_Private"
  region                = var.region
  network_address_space = var.network_address_space_employee
  subnet1_address_space = var.employee_subnet1_address_space
  subnet2_address_space = var.employee_subnet2_address_space
  subnet3_address_space = var.employee_subnet3_address_space
  subnet4_address_space = var.employee_subnet4_address_space
  tag_name              = var.tag_name_vpc_employee
  tag_application       = var.tag_application
  tag_owner             = var.tag_owner
  tag_costcenter        = var.tag_costcenter
  tag_managedby         = var.tag_managedby
}

module "vpc_cryptocurrency" {
  source                = "../../../../../AWS_Modules/Modules/VPC/VPC_4SN_Private"
  region                = var.region
  network_address_space = var.network_address_space_cryptocurrency
  subnet1_address_space = var.cryptocurrency_subnet1_address_space
  subnet2_address_space = var.cryptocurrency_subnet2_address_space
  subnet3_address_space = var.cryptocurrency_subnet3_address_space
  subnet4_address_space = var.cryptocurrency_subnet4_address_space
  tag_name              = var.tag_name_vpc_cryptocurrency
  tag_application       = var.tag_application
  tag_owner             = var.tag_owner
  tag_costcenter        = var.tag_costcenter
  tag_managedby         = var.tag_managedby
}