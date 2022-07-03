# AD Connector Config
variable "region" {
  type    = string
  default = "eu-west-1"
}
variable "parameter_name" {
  type    = string
  default = "/production/workspace/adconnector/password"
}
variable "parameter_description" {
  type    = string
  default = "AD Connect Admin Password"
}
variable "parameter_type" {
  type    = string
  default = "SecureString"
}
variable "parameter_value" {
  type = string
}

# Tags
variable "tag_name" {
  type    = string
  default = "-service-aws"
}
variable "tag_application" {
  type    = string
  default = "AD Connect"
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