# Route53 Config
variable "route53_zone" {
  type = string
}
variable "record_type" {
  type = string
}
variable "record_name" {
  type = string
}
variable "record_ttl" {
  type = string
}
variable "record_targets" {
  type = list(string)
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
