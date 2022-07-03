# VPC
resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id          = var.vpc_id
  amazon_side_asn = var.amazon_side_asn

  tags = merge(local.common_tags, { Name = "${var.tag_name}-VPN-GW" })
}
