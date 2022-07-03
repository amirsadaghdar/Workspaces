# Route53 Config
variable "region" {
  type = string
}
variable "aws_route53_zone" {
  type = string
}
variable "aws_record_type" {
  type = string
}
variable "aws_record_name" {
  type = string
}
variable "lb_name" {
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