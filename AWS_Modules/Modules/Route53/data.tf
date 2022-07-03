# Data
data "aws_route53_zone" "zone" {
  name         = var.aws_route53_zone
  private_zone = false
}

data "aws_elb_hosted_zone_id" "lb_zone_id" {
  region = "eu-west-1"
}

data "aws_lb" "lb_name" {
  name = var.lb_name
}