# Route 53
resource "aws_route53_record" "record" {
  zone_id = data.aws_route53_zone.zone.zone_id
  type    = var.record_type
  name    = "${var.record_name}.${data.aws_route53_zone.zone.name}"
  ttl     = var.record_ttl
  records = var.record_targets
}
