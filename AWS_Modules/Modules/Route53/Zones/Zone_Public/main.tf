# # Route 53
resource "aws_route53_zone" "zone" {
  name = var.zone_name
}
