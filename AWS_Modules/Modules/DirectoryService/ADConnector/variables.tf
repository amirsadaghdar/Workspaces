# AD Connector Config
variable "region" {
  type = string
}
variable "domain_name" {
  type = string
}
variable "ad_size" {
  type = string
}
variable "ad_type" {
  type = string
}
variable "customer_dns_ips" {
  type = list(string)
}
variable "customer_username" {
  type = string
}
variable "subnet_ids" {
  type = list(string)
}
variable "vpc_id" {
  type = string
}
variable "default_ou" {
  type = string
}
variable "sg_id" {
  type = string
}
variable "ip_group_ids" {
  type = list(string)
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