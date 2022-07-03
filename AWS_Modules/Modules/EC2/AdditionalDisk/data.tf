# Data
data "aws_availability_zones" "available" {}

data "aws_instance" "instance" {

  instance_tags = {
    Name = "${var.instance_name}"
  }
}