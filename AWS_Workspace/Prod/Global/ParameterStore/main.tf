# Provider
provider "aws" {
  region  = var.region
  profile = "workspace"
}

# Module
module "adconnector" {
  source                = "../../../../AWS_Modules/Modules/SystemManager/ParameterStore"
  region                = var.region
  parameter_name        = var.parameter_name
  parameter_description = var.parameter_description
  parameter_type        = var.parameter_type
  parameter_value       = var.parameter_value
  tag_name              = var.tag_name
  tag_application       = var.tag_application
  tag_owner             = var.tag_owner
  tag_costcenter        = var.tag_costcenter
  tag_managedby         = var.tag_managedby
}