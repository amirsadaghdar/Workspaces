# Route53 Config
variable "zone_name" {
  type = string
}
variable "vpc_id" {
  type = string
}

# Tags
variable "tag_application" {
  type = string
}
variable "tag_owner" {
  type = string
}
variable "tag_costcenter" {
  type    = string
  default = "3517"
}
variable "tag_managedby" {
  type = string
}
