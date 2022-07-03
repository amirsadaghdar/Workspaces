# Instances
resource "aws_instance" "instance" {
  ami             = var.instance_ami
  instance_type   = var.instance_type
  subnet_id       = sort(data.aws_subnet_ids.aws_subnet.ids)[0]
  security_groups = [var.instance_security_group]

  lifecycle {
    ignore_changes = [
      security_groups
    ]
  }

  root_block_device {
    volume_size           = var.instance_disk01
    delete_on_termination = true
    volume_type           = "gp2"
  }

  tags     = merge(local.common_tags, { Name = "${var.instance_name}" })
  key_name = var.key_name
}
