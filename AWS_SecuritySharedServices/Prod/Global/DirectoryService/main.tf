# Provider
provider "aws" {
  region  = var.region
  profile = "security"
}

# Module
module "adconnector" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/ADConnector"
  region            = var.region
  domain_name       = var.domain_name
  ad_size           = var.ad_size
  ad_type           = var.ad_type
  customer_dns_ips  = var.customer_dns_ips
  customer_username = var.customer_username
  subnet_ids        = var.subnet_ids
  vpc_id            = var.vpc_id
  default_ou        = var.default_ou
  tag_name          = var.tag_name
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}