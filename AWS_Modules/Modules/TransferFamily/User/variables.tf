# Transfer Family Config
variable "region" {
  type = string
}
variable "server_id" {
  type = string
}
variable "user_name" {
  type = string
}
variable "ssh_key" {
  type = string
}
variable "target_bucket" {
  type = string
}
variable "s3_bucket" {
  type = string
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
  type    = string
  default = "3517"
}
variable "tag_managedby" {
  type = string
}