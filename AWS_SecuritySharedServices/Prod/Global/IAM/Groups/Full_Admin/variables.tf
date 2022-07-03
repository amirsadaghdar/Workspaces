#User Config
variable "region" {
  type    = string
  default = "eu-west-1"
}
variable "group_name" {
  type    = string
  default = "Full_Admin"
}
variable "full_admin_policy_arn" {
  type    = string
  default = "arn:aws:iam::aws:policy/AdministratorAccess"
}
variable "force_mfa_policy_arn" {
  type    = string
  default = "arn:aws:iam::11111111111:policy/Force_MFA"
}
variable "path" {
  type    = string
  default = "/"
}


# Tags
variable "tag_name" {
  type    = string
  default = "asadaghdar1"
}
variable "tag_application" {
  type    = string
  default = "Console_Access"
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