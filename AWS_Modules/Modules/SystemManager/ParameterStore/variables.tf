# AD Connector Config
variable "region" {
  type = string
}
variable "parameter_name" {
  type = string
}
variable "parameter_description" {
  type = string
}
variable "parameter_type" {
  type = string
}
variable "parameter_value" {
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