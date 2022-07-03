# Additional disk
resource "aws_ebs_volume" "disk02" {
  availability_zone = var.availability_zone
  size              = var.instance_disk02
  tags              = merge(local.common_tags, { Name = "${var.instance_name}" })
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = var.instance_disk02_name
  volume_id   = aws_ebs_volume.disk02.id
  instance_id = data.aws_instance.instance.id
}
