# AD Connector Config
variable "region" {
  type = string
}
variable "group_name" {
  type = string
}
variable "group_description" {
  type = string
}
variable "rule_source" {
  type = string
}
variable "rule_description" {
  type = string
}

# Tags
variable "tag_name" {
  type = string
}
variable "tag_application" {
  type = string
}
variable "tag_owner" {
  type = string
}
variable "tag_costcenter" {
  type = string
}
variable "tag_managedby" {
  type = string
}