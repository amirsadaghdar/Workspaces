# Route 53
resource "aws_route53_record" "record" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "${var.aws_record_name}.${data.aws_route53_zone.zone.name}"
  type    = var.aws_record_type

  alias {
    name                   = data.aws_lb.lb_name.dns_name
    zone_id                = data.aws_elb_hosted_zone_id.lb_zone_id.id
    evaluate_target_health = true
  }
}

