# Instance Key
variable "region" {
  type = string
}
variable "availability_zone" {
  type = string
}
# Disk Config
variable "instance_name" {
  type = string
}
variable "instance_disk02" {
  type = number
}
variable "instance_disk02_name" {
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