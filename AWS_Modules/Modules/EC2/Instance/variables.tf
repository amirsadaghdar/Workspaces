# Instance Key
variable "private_key_path" {
  type = string
}
variable "key_name" {
  type = string
}
variable "region" {
  type = string
}
# Instance Config
variable "instance_name" {
  type = string
}
variable "instance_disk01" {
  type = number
}
variable "instance_ami" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "instance_security_group" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "subnet_name" {
  type = string
}
variable "subnet_id" {
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
  type = string
}
variable "tag_managedby" {
  type = string
}