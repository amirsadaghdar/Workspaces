# Data
data "aws_availability_zones" "available" {}

data "aws_subnet_ids" "aws_subnet" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.subnet_name}"
  }
}