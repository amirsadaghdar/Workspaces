
## TRANSIT GATEWAY ATTACHMENT - DMZ ##

resource "aws_vpn_connection" "vpn_conn5" {
  customer_gateway_id = var.aws_customer_gateway1_id
  transit_gateway_id  = var.aws_ec2_transit_gateway_id
  type                = var.cgw_type

  tags = merge(local.common_tags, { Name = "${var.tag_name}-DMZ2 FW1" })
}

resource "aws_vpn_connection" "vpn_conn6" {
  customer_gateway_id = var.aws_customer_gateway2_id
  transit_gateway_id  = var.aws_ec2_transit_gateway_id
  type                = var.cgw_type

  tags = merge(local.common_tags, { Name = "${var.tag_name}-DMZ2 FW2" })
}

## TRANSIT GATEWAY ROUTING TABLE ATTACHMENT - DMZ VPN ##

resource "aws_ec2_transit_gateway_route_table" "tgw_rt1" {
  transit_gateway_id = var.aws_ec2_transit_gateway_id

  tags = merge(local.common_tags, { Name = "${var.tag_name}-TGW DMZ2 RT" })
}

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rta5" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn5.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt1.id
}
resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_prp5" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn5.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt1.id
}

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rta6" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn6.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt1.id
}
resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_prp6" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn6.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt1.id
}
