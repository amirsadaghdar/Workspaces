# Data
data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_ec2_transit_gateway_vpn_attachment" "tgwa_vpn1" {
  vpn_connection_id = aws_vpn_connection.vpn_conn1.id
}

data "aws_ec2_transit_gateway_vpn_attachment" "tgwa_vpn2" {
  vpn_connection_id = aws_vpn_connection.vpn_conn2.id
}


data "aws_ec2_transit_gateway_vpn_attachment" "tgwa_vpn3" {
  vpn_connection_id = aws_vpn_connection.vpn_conn3.id
}

data "aws_ec2_transit_gateway_vpn_attachment" "tgwa_vpn4" {
  vpn_connection_id = aws_vpn_connection.vpn_conn4.id
}