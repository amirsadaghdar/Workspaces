# Provider
provider "aws" {
  region  = var.region
  profile = "security"
}

# Module
module "group" {
  source          = "../../../../../../AWS_Modules/Modules/iam/groups"
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
  source          = "../../../../../../AWS_Modules/Modules/iam/grouppolicy"
  region          = var.region
  group_name      = var.group_name
  policy_arn      = var.read_only_policy_arn
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

module "group_policy2" {
  source          = "../../../../../../AWS_Modules/Modules/iam/grouppolicy"
  region          = var.region
  group_name      = var.group_name
  policy_arn      = var.change_password_policy_arn
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}