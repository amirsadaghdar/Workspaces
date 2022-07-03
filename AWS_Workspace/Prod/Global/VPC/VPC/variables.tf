# VPC Config
variable "region" {
  type    = string
  default = "eu-west-1"
}

## VPC_Contractor1 Config
variable "network_address_space_contractor1" {
  type    = string
  default = "50.20.0.0/19"
}
variable "tag_name_vpc_contractor1" {
  type    = string
  default = "Contractor1"
}

# Subnet 1 Config
variable "contractor1_subnet1_address_space" {
  type    = string
  default = "50.20.1.0/24"
}
# Subnet 2 Config
variable "contractor1_subnet2_address_space" {
  type    = string
  default = "50.20.2.0/24"
}
# Subnet 3 Config
variable "contractor1_subnet3_address_space" {
  type    = string
  default = "50.20.3.0/24"
}
# Subnet 4 Config
variable "contractor1_subnet4_address_space" {
  type    = string
  default = "50.20.4.0/24"
}

## VPC_Employee Config
variable "network_address_space_employee" {
  type    = string
  default = "50.20.32.0/19"
}
variable "tag_name_vpc_employee" {
  type    = string
  default = "Employee"
}

# Subnet 1 Config
variable "employee_subnet1_address_space" {
  type    = string
  default = "50.20.33.0/24"
}
# Subnet 2 Config
variable "employee_subnet2_address_space" {
  type    = string
  default = "50.20.34.0/24"
}
# Subnet 3 Config
variable "employee_subnet3_address_space" {
  type    = string
  default = "50.20.35.0/24"
}
# Subnet 4 Config
variable "employee_subnet4_address_space" {
  type    = string
  default = "50.20.36.0/24"
}

## VPC_CryptoCurrency Config
variable "network_address_space_cryptocurrency" {
  type    = string
  default = "50.20.64.0/19"
}
variable "tag_name_vpc_cryptocurrency" {
  type    = string
  default = "CryptoCurrency"
}

# Subnet 1 Config
variable "cryptocurrency_subnet1_address_space" {
  type    = string
  default = "50.20.64.0/24"
}
# Subnet 2 Config
variable "cryptocurrency_subnet2_address_space" {
  type    = string
  default = "50.20.65.0/24"
}
# Subnet 3 Config
variable "cryptocurrency_subnet3_address_space" {
  type    = string
  default = "50.20.66.0/24"
}
# Subnet 4 Config
variable "cryptocurrency_subnet4_address_space" {
  type    = string
  default = "50.20.67.0/24"
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