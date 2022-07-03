# Provider
provider "aws" {
  region  = var.region
  profile = "security"
}

# Module DFells
module "users" {
  source          = "../../../../../../AWS_Modules/Modules/iam/users"
  region          = var.region
  user_names      = var.user_names
  group_name      = var.group_name
  path            = var.path
  encryption_key  = var.encryption_key
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

module "group_membership" {
  source          = "../../../../../../AWS_Modules/Modules/iam/groupmembership"
  user_names      = var.user_names
  group_name      = var.group_name
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}
