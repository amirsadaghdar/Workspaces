# AD Connector
resource "aws_dx_private_virtual_interface" "aws_vif" {
  connection_id  = var.connection_id
  name           = var.vif_name
  vlan           = var.vlan
  address_family = var.address_family
  bgp_asn        = var.bgp_asn
  vpn_gateway_id = var.vpn_gateway_id

  tags = merge(local.common_tags, { Name = "${var.tag_name}-PRIVATE-VIF" })
}
