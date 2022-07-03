

## TRANSIT GATEWAY ##

resource "aws_ec2_transit_gateway" "tgw" {
  amazon_side_asn                 = var.amazon_side_asn
  auto_accept_shared_attachments  = "disable"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"
  dns_support                     = "enable"
  vpn_ecmp_support                = "enable"

  tags = merge(local.common_tags, { Name = "${var.tag_name}-Shared_TGW" })
}

## CUSTOMER GATEWAY ##
# Connection between TGW and PAs in the main account.

resource "aws_customer_gateway" "cgw1" {
  bgp_asn    = var.cgw_bgp_asn
  ip_address = var.cgw1_ip_address
  type       = var.cgw_type

  tags = merge(local.common_tags, { Name = "${var.tag_name}-TRANSIT-PALO-FW-01 CGW" })
}

resource "aws_customer_gateway" "cgw2" {
  bgp_asn    = var.cgw_bgp_asn
  ip_address = var.cgw2_ip_address
  type       = var.cgw_type

  tags = merge(local.common_tags, { Name = "${var.tag_name}-TRANSIT-PALO-FW-02 CGW" })
}

## TRANSIT GATEWAY ATTACHMENT - DMZ ##

resource "aws_vpn_connection" "vpn_conn1" {
  customer_gateway_id = aws_customer_gateway.cgw1.id
  transit_gateway_id  = aws_ec2_transit_gateway.tgw.id
  type                = aws_customer_gateway.cgw1.type
}

resource "aws_vpn_connection" "vpn_conn2" {
  customer_gateway_id = aws_customer_gateway.cgw2.id
  transit_gateway_id  = aws_ec2_transit_gateway.tgw.id
  type                = aws_customer_gateway.cgw2.type
}

## TRANSIT GATEWAY ATTACHMENT - INSIDE ##

resource "aws_vpn_connection" "vpn_conn3" {
  customer_gateway_id = aws_customer_gateway.cgw1.id
  transit_gateway_id  = aws_ec2_transit_gateway.tgw.id
  type                = aws_customer_gateway.cgw1.type
}

resource "aws_vpn_connection" "vpn_conn4" {
  customer_gateway_id = aws_customer_gateway.cgw2.id
  transit_gateway_id  = aws_ec2_transit_gateway.tgw.id
  type                = aws_customer_gateway.cgw2.type
}

## TRANSIT GATEWAY ROUTING TABLE ATTACHMENT - DMZ VPN ##

resource "aws_ec2_transit_gateway_route_table" "tgw_rt1" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id

  tags = merge(local.common_tags, { Name = "${var.tag_name}-TGW DMZ RT" })
}

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rta1" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn1.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt1.id
}
resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_prp1" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn1.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt1.id
}

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rta2" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn2.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt1.id
}
resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_prp2" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn2.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt1.id
}

## TRANSIT GATEWAY ROUTING TABLE ATTACHMENT - INSIDE VPN ##

resource "aws_ec2_transit_gateway_route_table" "tgw_rt2" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id

  tags = merge(local.common_tags, { Name = "${var.tag_name}-TGW INSIDE ZONE RT" })
}

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rta3" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn3.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt2.id
}
resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_prp3" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn3.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt2.id
}

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rta4" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn4.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt2.id
}
resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_prp4" {
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.tgwa_vpn4.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt2.id
}

## RAM Resource Share ##

resource "aws_ram_resource_share" "ram" {
  name = var.ram_share_tg

  tags = merge(local.common_tags, { Name = "${var.tag_name}-TGW-RAM" })
}

# Share the transit gateway...
resource "aws_ram_resource_association" "ram-r-asc" {
  resource_arn       = aws_ec2_transit_gateway.tgw.arn
  resource_share_arn = aws_ram_resource_share.ram.id
}

# ...with the second account.
resource "aws_ram_principal_association" "ram-p-asc" {
  principal          = var.aws_remote_account
  resource_share_arn = aws_ram_resource_share.ram.id
}
