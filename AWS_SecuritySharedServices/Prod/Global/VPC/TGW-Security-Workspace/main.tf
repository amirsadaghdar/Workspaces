# Security account owns the transit gateway and accepts the VPC attachment #
provider "aws" {
  region  = var.region
  alias   = "security"
  profile = "security"
}

# Workspace account owns the VPC and creates the VPC attachment #
provider "aws" {
  region  = var.region
  alias   = "workspace"
  profile = "workspace"
}

# Create the VPC attachment in the workpace account... #
/*resource "aws_ec2_transit_gateway_vpc_attachment" "tg_vpc_att1" {
  provider                                        = aws.workspace
  subnet_ids                                      = [var.employee_tgw_subnet3, var.employee_tgw_subnet4]
  transit_gateway_id                              = var.transit_gateway_id
  vpc_id                                          = var.employee_vpc_id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags                                            = merge(local.common_tags, { Name = "${var.tag_name}-vpc-attach1" })
}*/

resource "aws_ec2_transit_gateway_vpc_attachment" "tg_vpc_att2" {
  provider                                        = aws.workspace
  subnet_ids                                      = [var.contractor1_tgw_subnet3, var.contractor1_tgw_subnet4]
  transit_gateway_id                              = var.transit_gateway_id
  vpc_id                                          = var.contractor1_vpc_id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags                                            = merge(local.common_tags, { Name = "${var.tag_name}-vpc-attach2" })
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tg_vpc_att3" {
  provider                                        = aws.workspace
  subnet_ids                                      = [var.cryptocurrency_tgw_subnet3, var.cryptocurrency_tgw_subnet4]
  transit_gateway_id                              = var.transit_gateway_id
  vpc_id                                          = var.cryptocurrency_vpc_id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags                                            = merge(local.common_tags, { Name = "${var.tag_name}-vpc-attach3" })
}

# ...and accept it in the secuirty account #
/*resource "aws_ec2_transit_gateway_vpc_attachment_accepter" "tg_vpc_accp1" {
  provider                                        = aws.security
  transit_gateway_attachment_id                   = aws_ec2_transit_gateway_vpc_attachment.tg_vpc_att1.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags                                            = merge(local.common_tags, { Name = "${var.tag_name}-vpc-accept1" })
}*/
resource "aws_ec2_transit_gateway_vpc_attachment_accepter" "tg_vpc_accp2" {
  provider                                        = aws.security
  transit_gateway_attachment_id                   = aws_ec2_transit_gateway_vpc_attachment.tg_vpc_att2.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = merge(local.common_tags, { Name = "${var.tag_name}-vpc-accept2" })
}
resource "aws_ec2_transit_gateway_vpc_attachment_accepter" "tg_vpc_accp3" {
  provider                                        = aws.security
  transit_gateway_attachment_id                   = aws_ec2_transit_gateway_vpc_attachment.tg_vpc_att3.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = merge(local.common_tags, { Name = "${var.tag_name}-vpc-accept3" })
}

# Associate and Propagate RTs in the TGW Accpt #
/*resource "aws_ec2_transit_gateway_route_table_association" "tgw_rta3" {
  provider                       = aws.security
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment_accepter.tg_vpc_accp1.id
  transit_gateway_route_table_id = var.security_inside_rt
  depends_on = [
    aws_ec2_transit_gateway_vpc_attachment_accepter.tg_vpc_accp1,
  ]
}
resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_prp3" {
  provider                       = aws.security
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment_accepter.tg_vpc_accp1.id
  transit_gateway_route_table_id = var.security_inside_rt
}*/

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rta4" {
  provider                       = aws.security
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment_accepter.tg_vpc_accp2.id
  transit_gateway_route_table_id = var.security_dmz_rt
  depends_on = [
    aws_ec2_transit_gateway_vpc_attachment_accepter.tg_vpc_accp2,
  ]
}
resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_prp4" {
  provider                       = aws.security
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment_accepter.tg_vpc_accp2.id
  transit_gateway_route_table_id = var.security_dmz_rt
}

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rta5" {
  provider                       = aws.security
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment_accepter.tg_vpc_accp3.id
  transit_gateway_route_table_id = var.security_dmz2_rt
  depends_on = [
    aws_ec2_transit_gateway_vpc_attachment_accepter.tg_vpc_accp2,
  ]
}
resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_prp5" {
  provider                       = aws.security
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment_accepter.tg_vpc_accp3.id
  transit_gateway_route_table_id = var.security_dmz2_rt
}

# Routing Table #
resource "aws_route_table" "rt_data1" {
  provider = aws.workspace
  vpc_id   = var.employee_vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  tags = merge(local.common_tags, { Name = "${var.tag_name}-rt_data1" })
}

resource "aws_vpn_gateway_route_propagation" "rt1_prop" {
  provider       = aws.workspace
  vpn_gateway_id = var.gateway_id
  route_table_id = aws_route_table.rt_data1.id
}

resource "aws_route_table" "rt_data2" {
  provider = aws.workspace
  vpc_id   = var.contractor1_vpc_id

  route {
    cidr_block         = "0.0.0.0/0"
    transit_gateway_id = var.transit_gateway_id
  }

  tags = merge(local.common_tags, { Name = "${var.tag_name}-rt_data2" })
}

resource "aws_route_table" "rt_data3" {
  provider = aws.workspace
  vpc_id   = var.cryptocurrency_vpc_id

  route {
    cidr_block         = "0.0.0.0/0"
    transit_gateway_id = var.transit_gateway_id
  }

  tags = merge(local.common_tags, { Name = "${var.tag_name}-rt_data3" })
}

# Routing Table Association
resource "aws_route_table_association" "rta_em1" {
  provider       = aws.workspace
  subnet_id      = var.employee_data_subnet1
  route_table_id = aws_route_table.rt_data1.id
}

resource "aws_route_table_association" "rta_em2" {
  provider       = aws.workspace
  subnet_id      = var.employee_data_subnet2
  route_table_id = aws_route_table.rt_data1.id
}

resource "aws_route_table_association" "rta_co1" {
  provider       = aws.workspace
  subnet_id      = var.contractor1_data_subnet1
  route_table_id = aws_route_table.rt_data2.id
}

resource "aws_route_table_association" "rta_co2" {
  provider       = aws.workspace
  subnet_id      = var.contractor1_data_subnet2
  route_table_id = aws_route_table.rt_data2.id
}

resource "aws_route_table_association" "rta_cc1" {
  provider       = aws.workspace
  subnet_id      = var.cryptocurrency_data_subnet1
  route_table_id = aws_route_table.rt_data3.id
}

resource "aws_route_table_association" "rta_cc2" {
  provider       = aws.workspace
  subnet_id      = var.cryptocurrency_data_subnet2
  route_table_id = aws_route_table.rt_data3.id
}