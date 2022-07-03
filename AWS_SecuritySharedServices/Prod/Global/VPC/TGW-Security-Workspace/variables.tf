# Transit Gateway Config
variable "region" {
  type    = string
  default = "eu-west-1"
}

#
variable "resource_share_arn" {
  type    = string
  default = "arn:aws:ram:eu-west-1:1111111111111111:resource-share/11111111111111111111111111"
}

variable "transit_gateway_id" {
  type    = string
  default = "tgw-aaaaaaaaaaa"
}

variable "gateway_id" {
  type    = string
  default = "vgw-aaaaaaaaaaa"
}

#
variable "employee_vpc_id" {
  type    = string
  default = "vpc-aaaaaaaaaaa"
}
variable "employee_tgw_subnet3" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}
variable "employee_tgw_subnet4" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}

#
variable "contractor1_vpc_id" {
  type    = string
  default = "vpc-aaaaaaaaaaa"
}
variable "contractor1_tgw_subnet3" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}
variable "contractor1_tgw_subnet4" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}

#
variable "cryptocurrency_vpc_id" {
  type    = string
  default = "vpc-aaaaaaaaaaa"
}
variable "cryptocurrency_tgw_subnet3" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}
variable "cryptocurrency_tgw_subnet4" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}

#
variable "security_inside_rt" {
  type    = string
  default = "tgw-rtb-aaaaaaaaaaa"
}
variable "security_dmz_rt" {
  type    = string
  default = "tgw-rtb-aaaaaaaaaaa"
}
variable "security_dmz2_rt" {
  type    = string
  default = "tgw-rtb-aaaaaaaaaaa"
}

#
variable "employee_data_subnet1" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}
variable "employee_data_subnet2" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}

variable "contractor1_data_subnet1" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}
variable "contractor1_data_subnet2" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}

variable "cryptocurrency_data_subnet1" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}
variable "cryptocurrency_data_subnet2" {
  type    = string
  default = "subnet-aaaaaaaaaaa"
}

# Tags
variable "tag_name" {
  type    = string
  default = "Security"
}
variable "tag_application" {
  type    = string
  default = "Security Shared Services"
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