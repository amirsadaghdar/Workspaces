# Provider
provider "aws" {
  region  = var.region
  profile = "workspace"
}

# Module
module "ip_group0" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/IPGroup"
  region            = var.region
  group_name        = var.group_name_ipg0
  group_description = var.group_description_ipg0
  rule_source       = var.rule_source_ipg0
  rule_description  = var.rule_description_ipg0
  tag_name          = var.tag_name
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}

module "ip_group1" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/IPGroup"
  region            = var.region
  group_name        = var.group_name_ipg1
  group_description = var.group_description_ipg1
  rule_source       = var.rule_source_ipg1
  rule_description  = var.rule_description_ipg1
  tag_name          = var.tag_name
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}

module "ip_group2" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/IPGroup"
  region            = var.region
  group_name        = var.group_name_ipg2
  group_description = var.group_description_ipg2
  rule_source       = var.rule_source_ipg2
  rule_description  = var.rule_description_ipg2
  tag_name          = var.tag_name
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}

module "ip_group3" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/IPGroup"
  region            = var.region
  group_name        = var.group_name_ipg3
  group_description = var.group_description_ipg3
  rule_source       = var.rule_source_ipg3
  rule_description  = var.rule_description_ipg3
  tag_name          = var.tag_name
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}

module "ip_group4" {
  source            = "../../../../AWS_Modules/Modules/DirectoryService/IPGroup"
  region            = var.region
  group_name        = var.group_name_ipg4
  group_description = var.group_description_ipg4
  rule_source       = var.rule_source_ipg4
  rule_description  = var.rule_description_ipg4
  tag_name          = var.tag_name
  tag_application   = var.tag_application
  tag_owner         = var.tag_owner
  tag_costcenter    = var.tag_costcenter
  tag_managedby     = var.tag_managedby
}