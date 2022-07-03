# VPC Config
variable "region" {
  type    = string
  default = "eu-west-1"
}

## VPC_security Config
variable "network_address_space_security" {
  type    = string
  default = "30.50.0.0/16"
}
variable "tag_name_vpc_security" {
  type    = string
  default = "security"
}

# Subnet 1 Config
variable "security_subnet1_address_space" {
  type    = string
  default = "30.50.1.0/24"
}
# Subnet 2 Config
variable "security_subnet2_address_space" {
  type    = string
  default = "30.50.2.0/24"
}
# Subnet 3 Config
variable "security_subnet3_address_space" {
  type    = string
  default = "30.50.3.0/24"
}
# Subnet 4 Config
variable "security_subnet4_address_space" {
  type    = string
  default = "30.50.4.0/24"
}

## Tags
variable "tag_application" {
  type    = string
  default = "Workspace"
}
variable "tag_owner" {
  type    = string
  default = "Network"
}
variable "tag_costcenter" {
  type    = string
  default = "3517"
}
variable "tag_managedby" {
  type    = string
  default = "Terraform"
}