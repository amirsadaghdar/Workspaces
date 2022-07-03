# VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.network_address_space

  tags = merge(local.common_tags, { Name = "${var.tag_name}-vpc" })
}

# Private Subnet
resource "aws_subnet" "subnet1" {
  cidr_block        = var.subnet1_address_space
  vpc_id            = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = merge(local.common_tags, { Name = "${var.tag_name}-subnet1" })

}

resource "aws_subnet" "subnet2" {
  cidr_block        = var.subnet2_address_space
  vpc_id            = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = merge(local.common_tags, { Name = "${var.tag_name}-subnet2" })

}

resource "aws_subnet" "subnet3" {
  cidr_block        = var.subnet3_address_space
  vpc_id            = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = merge(local.common_tags, { Name = "${var.tag_name}-subnet3" })

}

resource "aws_subnet" "subnet4" {
  cidr_block        = var.subnet4_address_space
  vpc_id            = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = merge(local.common_tags, { Name = "${var.tag_name}-subnet4" })

}

# Public Subnet
resource "aws_subnet" "subnet5" {
  cidr_block        = var.subnet5_address_space
  vpc_id            = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = merge(local.common_tags, { Name = "${var.tag_name}-subnet5" })

}

resource "aws_subnet" "subnet6" {
  cidr_block        = var.subnet6_address_space
  vpc_id            = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = merge(local.common_tags, { Name = "${var.tag_name}-subnet6" })

}

# ACL Public#
resource "aws_network_acl" "acl_public" {
  vpc_id = aws_vpc.vpc.id
  subnet_ids = [aws_subnet.subnet1.id, aws_subnet.subnet2.id,
    aws_subnet.subnet3.id, aws_subnet.subnet4.id,
  aws_subnet.subnet5.id, aws_subnet.subnet6.id]

  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = merge(local.common_tags, { Name = "${var.tag_name}-acl-public" })

}

# Security Group
resource "aws_security_group" "sg" {
  name        = "open_sg"
  description = "Open Security Group"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "Open Inbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Open Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.common_tags, { Name = "${var.tag_name}-sg" })
}