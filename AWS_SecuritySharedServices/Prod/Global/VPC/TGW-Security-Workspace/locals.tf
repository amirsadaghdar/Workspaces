# Tags
locals {
  common_tags = {
    CostCenter  = var.tag_costcenter
    Owner       = var.tag_owner
    Application = var.tag_application
    ManagedBy   = var.tag_managedby
  }
}
