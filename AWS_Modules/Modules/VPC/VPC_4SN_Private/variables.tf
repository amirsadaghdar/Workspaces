# VPC Config
variable "region" {
  type = string
}
variable "network_address_space" {
  type = string
}
# Subnet 1 Config
variable "subnet1_address_space" {
  type = string
}
# Subnet 2 Config
variable "subnet2_address_space" {
  type = string
}
# Subnet 3 Config
variable "subnet3_address_space" {
  type = string
}
# Subnet 4 Config
variable "subnet4_address_space" {
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