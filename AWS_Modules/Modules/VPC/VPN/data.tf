# Data
data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_ec2_transit_gateway_vpn_attachment" "tgwa_vpn5" {
  vpn_connection_id = aws_vpn_connection.vpn_conn5.id
}

data "aws_ec2_transit_gateway_vpn_attachment" "tgwa_vpn6" {
  vpn_connection_id = aws_vpn_connection.vpn_conn6.id
}