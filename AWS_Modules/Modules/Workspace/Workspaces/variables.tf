# Workspace Config
variable "region" {
  type = string
}
variable "user_name" {
  type = list(string)
}
variable "volume_encryption_key" {
  type = string
}
variable "directory_id" {
  type = string
}
variable "compute_type_name" {
  type = string
}
variable "user_volume_size_gib" {
  type = number
}
variable "root_volume_size_gib" {
  type = number
}
variable "running_mode" {
  type = string
}
variable "running_mode_auto_stop_timeout_in_minutes" {
  type = number
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