# Data
data "aws_route53_zone" "zone" {
  name = var.route53_zone
}
