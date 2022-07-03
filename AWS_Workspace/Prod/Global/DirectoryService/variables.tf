# AD Connector Config
variable "region" {
  type    = string
  default = "eu-west-1"
}
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
variable "customer_dns_ips" {
  type    = list(string)
  default = ["10.64.64.71", "10.76.101.21"]
}
variable "customer_username" {
  type    = string
  default = "-service-aws"
}

#
variable "contractor1_subnet_ids" {
  type    = list(string)
  default = ["subnet-aaaaaaaaaaa", "subnet-aaaaaaaaaaa"]
}
variable "contractor1_vpc_id" {
  type    = string
  default = "vpc-aaaaaaaaaaa"
}

variable "employee_subnet_ids" {
  type    = list(string)
  default = ["subnet-aaaaaaaaaaa", "subnet-aaaaaaaaaaa"]
}
variable "employee_vpc_id" {
  type    = string
  default = "vpc-aaaaaaaaaaa"
}

variable "cryptocurrency_subnet_ids" {
  type    = list(string)
  default = ["subnet-aaaaaaaaaaa", "subnet-aaaaaaaaaaa"]
}
variable "cryptocurrency_vpc_id" {
  type    = string
  default = "vpc-aaaaaaaaaaa"
}

#
variable "default_ou" {
  type    = string
  default = "OU=Workspaces-PCoIP,DC=corp,DC=com"
}
variable "cryptocurrency_ou" {
  type    = string
  default = "OU=Workspaces-CryptoCurrency-PCoIP,DC=corp,DC=com"
}

#
variable "sg_id_contractor1" {
  type    = string
  default = "sg-aaaaaaaaaaa"
}
variable "sg_id_employee" {
  type    = string
  default = "sg-aaaaaaaaaaa"
}
variable "sg_id_cryptocurrency" {
  type    = string
  default = "sg-aaaaaaaaaaa"
}

#
variable "default_ip_group_ids" {
  type    = list(string)
  default = ["wsipg-aaaaaaaaaaa"]
}
variable "cryptocurrency_ip_group_ids" {
  type    = list(string)
  default = ["wsipg-aaaaaaaaaaa"]
}

# Tags
variable "tag_name" {
  type    = string
  default = "AD Connector"
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