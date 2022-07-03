# Workspaces IP Group
resource "aws_workspaces_ip_group" "ip_group" {
  name        = var.group_name
  description = var.group_description
  rules {
    source      = var.rule_source
    description = var.rule_description
  }

  tags = merge(local.common_tags, { Name = "${var.tag_name}-IPGroup" })

}
