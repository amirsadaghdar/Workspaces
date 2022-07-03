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

module "adconnector_contractor1" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/ADConnector"
  region            = var.region
  domain_name       = var.domain_name
  ad_size           = var.ad_size
  ad_type           = var.ad_type
  customer_dns_ips  = var.customer_dns_ips
  customer_username = var.customer_username
  subnet_ids        = var.contractor1_subnet_ids
  vpc_id            = var.contractor1_vpc_id
  default_ou        = var.default_ou
  sg_id             = var.sg_id_contractor1
  ip_group_ids      = var.default_ip_group_ids
  tag_name          = var.tag_name
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
  subnet_ids        = var.employee_subnet_ids
  vpc_id            = var.employee_vpc_id
  default_ou        = var.default_ou
  sg_id             = var.sg_id_employee
  ip_group_ids      = var.default_ip_group_ids
  tag_name          = var.tag_name
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}

module "adconnector_cryptocurrency" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/ADConnector"
  region            = var.region
  domain_name       = var.domain_name
  ad_size           = var.ad_size
  ad_type           = var.ad_type
  customer_dns_ips  = var.customer_dns_ips
  customer_username = var.customer_username
  subnet_ids        = var.cryptocurrency_subnet_ids
  vpc_id            = var.cryptocurrency_vpc_id
  default_ou        = var.cryptocurrency_ou
  sg_id             = var.sg_id_cryptocurrency
  ip_group_ids      = var.cryptocurrency_ip_group_ids
  tag_name          = var.tag_name
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}