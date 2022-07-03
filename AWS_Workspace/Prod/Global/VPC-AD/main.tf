# Provider
provider "aws" {
  region  = var.region
  profile = "workspace"
}

# Module
module "default_role" {
  source          = "../../../../AWS_Modules/Modules/Workspace/DefaultRole"
  region          = var.region
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

module "vpc_contractor1" {
  source                = "../../../../AWS_Modules/Modules/VPC/VPC_4SN_Private"
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
  source                = "../../../../AWS_Modules/Modules/VPC/VPC_4SN_Private"
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


module "adconnector_contractor1" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/ADConnector"
  region            = var.region
  domain_name       = var.domain_name
  ad_size           = var.ad_size
  ad_type           = var.ad_type
  customer_dns_ips  = var.customer_dns_ips
  customer_username = var.customer_username
  subnet_ids        = [module.vpc_contractor1.aws_subnet1_id, module.vpc_contractor1.aws_subnet2_id]
  vpc_id            = module.vpc_contractor1.aws_vpc_id
  sg_id             = var.contractor1_sg_id
  default_ou        = var.default_ou
  tag_name          = var.tag_name_ad_connector
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}

module "adconnector_employee" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/ADConnector"
  region            = var.region
  domain_name       = var.domain_name
  ad_size           = var.ad_size
  ad_type           = var.ad_type
  customer_dns_ips  = var.customer_dns_ips
  customer_username = var.customer_username
  subnet_ids        = [module.vpc_employee.aws_subnet1_id, module.vpc_employee.aws_subnet2_id]
  vpc_id            = module.vpc_employee.aws_vpc_id
  sg_id             = var.employee_sg_id
  default_ou        = var.default_ou
  tag_name          = var.tag_name_ad_connector
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}