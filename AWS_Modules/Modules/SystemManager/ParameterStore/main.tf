# Directory

resource "aws_ssm_parameter" "secret" {
  name        = var.parameter_name
  description = var.parameter_description
  type        = var.parameter_type
  value       = var.parameter_value

  tags = merge(local.common_tags, { Name = "${var.tag_name}-param" })
}