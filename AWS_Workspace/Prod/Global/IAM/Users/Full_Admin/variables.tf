#User Config
variable "region" {
  type    = string
  default = "eu-west-1"
}
variable "user_names" {
  type    = list(string)
  default = ["squinlan", "dgayler", "jraisanen"]
}
variable "path" {
  type    = string
  default = "/"
}
variable "encryption_key" {
  type    = string
  default = "keybase:asadaghdar1"
}
variable "group_name" {
  type    = string
  default = "Full_Admin"
}

# Tags
variable "tag_name" {
  type    = string
  default = "Full_Access"
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