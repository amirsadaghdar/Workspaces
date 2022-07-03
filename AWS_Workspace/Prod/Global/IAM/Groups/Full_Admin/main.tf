# Provider
provider "aws" {
  region  = var.region
  profile = "production"
}

# Module
module "group" {
  source          = "../../../../../Modules/iam/groups"
  region          = var.region
  group_name      = var.group_name
  path            = var.path
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

module "group_policy1" {
  source          = "../../../../../Modules/iam/grouppolicy"
  region          = var.region
  group_name      = var.group_name
  policy_arn      = var.full_admin_policy_arn
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

module "group_policy2" {
  source          = "../../../../../Modules/iam/grouppolicy"
  region          = var.region
  group_name      = var.group_name
  policy_arn      = var.force_mfa_policy_arn
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}