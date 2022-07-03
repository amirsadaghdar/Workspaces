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
  default = ["30.11.22.33", "30.11.22.33"]
}
variable "customer_username" {
  type    = string
  default = "-service-aws"
}
variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-aaaaaaaaaaa", "subnet-aaaaaaaaaaa"]
}
variable "vpc_id" {
  type    = string
  default = "vpc-aaaaaaaaaaa"
}

variable "default_ou" {
  type    = string
  default = "OU=Workspaces,DC=corp,DC=com"
}

# Tags
variable "tag_name" {
  type    = string
  default = "AD-Workspace"
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