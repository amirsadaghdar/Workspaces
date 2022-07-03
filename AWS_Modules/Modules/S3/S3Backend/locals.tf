# Locals
locals {
  common_tags = {
    "Cost Centre" = var.tag_costcenter
    Owner         = var.tag_owner
    Application   = var.tag_application
    ManagedBy     = var.tag_managedby
  }
}
