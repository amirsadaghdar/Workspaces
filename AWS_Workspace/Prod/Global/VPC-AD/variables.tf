# VPC Config
variable "region" {
  type    = string
  default = "eu-west-1"
}

## VPC_Contractor1 Config
variable "network_address_space_contractor1" {
  type    = string
  default = "20.40.0.0/19"
}
variable "tag_name_vpc_contractor1" {
  type    = string
  default = "Contractor1"
}

# Subnet 1 Config
variable "contractor1_subnet1_address_space" {
  type    = string
  default = "20.40.1.0/24"
}
# Subnet 2 Config
variable "contractor1_subnet2_address_space" {
  type    = string
  default = "20.40.2.0/24"
}
# Subnet 3 Config
variable "contractor1_subnet3_address_space" {
  type    = string
  default = "20.40.3.0/24"
}
# Subnet 4 Config
variable "contractor1_subnet4_address_space" {
  type    = string
  default = "20.40.4.0/24"
}
## VPC_Employee Config
variable "network_address_space_employee" {
  type    = string
  default = "20.40.32.0/19"
}
variable "tag_name_vpc_employee" {
  type    = string
  default = "Employee"
}

# Subnet 1 Config
variable "employee_subnet1_address_space" {
  type    = string
  default = "20.40.33.0/24"
}
# Subnet 2 Config
variable "employee_subnet2_address_space" {
  type    = string
  default = "20.40.34.0/24"
}
# Subnet 3 Config
variable "employee_subnet3_address_space" {
  type    = string
  default = "20.40.35.0/24"
}
# Subnet 4 Config
variable "employee_subnet4_address_space" {
  type    = string
  default = "20.40.36.0/24"
}

## AD Connector
variable "domain_name" {
  type    = string
  default = "corp.com"
}
variable "ad_size" {
  type    = string
  default = "Small"
}
variable "ad_type" {
  type    = string
  default = "ADConnector"
}
variable "tag_name_ad_connector" {
  type    = string
  default = "AD_Connector"
}
variable "customer_dns_ips" {
  type    = list(string)
  default = ["20.64.64.71", "20.76.201.21"]
}
variable "customer_username" {
  type    = string
  default = "-service-aws"
}

variable "contractor1_subnet_ids" {
  type    = list(string)
  default = ["", ""]
}
variable "contractor1_vpc_id" {
  type    = string
  default = ""
}
variable "contractor1_sg_id" {
  type    = string
  default = ""
}

variable "employee_subnet_ids" {
  type    = list(string)
  default = ["", ""]
}
variable "employee_vpc_id" {
  type    = string
  default = "vpc-aaaa"
}
variable "employee_sg_id" {
  type    = string
  default = ""
}

variable "default_ou" {
  type    = string
  default = "OU=Workspaces-PCoIP,DC=corp,DC=com"
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