# IP Group
variable "region" {
  type    = string
  default = "eu-west-1"
}

# IPG0
variable "group_name_ipg0" {
  type    = string
  default = "London IP - 0.0.0.0/0"
}
variable "group_description_ipg0" {
  type    = string
  default = "London IP - 0.0.0.0/0"
}
variable "rule_source_ipg0" {
  type    = string
  default = "0.0.0.0/0"
}
variable "rule_description_ipg0" {
  type    = string
  default = "London IP Rule - 0.0.0.0/0"
}

# IPG1
variable "group_name_ipg1" {
  type    = string
  default = "London IP - 194.50.30.0/23"
}
variable "group_description_ipg1" {
  type    = string
  default = "London IP - 194.50.30.0/23"
}
variable "rule_source_ipg1" {
  type    = string
  default = "194.50.30.0/23"
}
variable "rule_description_ipg1" {
  type    = string
  default = "London IP Rule - 194.50.30.0/23"
}

# IPG2
variable "group_name_ipg2" {
  type    = string
  default = "London IP - 194.50.32.0/24"
}
variable "group_description_ipg2" {
  type    = string
  default = "London IP - 194.50.32.0/24"
}
variable "rule_source_ipg2" {
  type    = string
  default = "194.50.32.0/24"
}
variable "rule_description_ipg2" {
  type    = string
  default = "London IP Rule - 194.50.32.0/24"
}

# IPG3
variable "group_name_ipg3" {
  type    = string
  default = "London IP - 37.46.4.0/24"
}
variable "group_description_ipg3" {
  type    = string
  default = "London IP - 37.46.4.0/24"
}
variable "rule_source_ipg3" {
  type    = string
  default = "37.46.4.0/24"
}
variable "rule_description_ipg3" {
  type    = string
  default = "London IP Rule - 37.46.4.0/24"
}

# IPG4
variable "group_name_ipg4" {
  type    = string
  default = "London IP - 194.50.30.10/32"
}
variable "group_description_ipg4" {
  type    = string
  default = "London IP - 194.50.30.10/32"
}
variable "rule_source_ipg4" {
  type    = string
  default = "194.50.30.10/32"
}
variable "rule_description_ipg4" {
  type    = string
  default = "London IP Rule - 194.50.30.10/32"
}

# Tags
variable "tag_name" {
  type    = string
  default = "Workspace"
}
variable "tag_application" {
  type    = string
  default = "Workspace"
}
variable "tag_owner" {
  type    = string
  default = "Infra"
}
variable "tag_costcenter" {
  type    = string
  default = "3517"
}
variable "tag_managedby" {
  type    = string
  default = "Terraform"
}