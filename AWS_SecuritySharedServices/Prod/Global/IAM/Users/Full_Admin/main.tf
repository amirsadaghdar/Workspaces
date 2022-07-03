# Provider
provider "aws" {
  region  = var.region
  profile = "production"
}

# Module
module "user" {
  source          = "../../../../../Modules/iam/users"
  region          = var.region
  user_name       = var.user_name
  group_name      = var.group_name
  path            = var.path
  encryption_key  = var.encryption_key
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

module "group_membership1" {
  source          = "../../../../../Modules/iam/groupmembership"
  user_name       = var.user_name
  group_name      = var.group_name
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}