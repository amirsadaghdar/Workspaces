# Workspace

resource "aws_workspaces_workspace" "win" {
  directory_id = var.directory_id
  bundle_id    = data.aws_workspaces_bundle.value_windows_10.id
  for_each     = toset(var.user_name)
  user_name    = each.value

  root_volume_encryption_enabled = true
  user_volume_encryption_enabled = true
  volume_encryption_key          = var.volume_encryption_key

  workspace_properties {
    compute_type_name                         = var.compute_type_name
    user_volume_size_gib                      = var.user_volume_size_gib
    root_volume_size_gib                      = var.root_volume_size_gib
    running_mode                              = var.running_mode
    running_mode_auto_stop_timeout_in_minutes = var.running_mode_auto_stop_timeout_in_minutes
  }

  timeouts {
    create = "2h"
    update = "2h"
    delete = "2h"
  }

  lifecycle {
    create_before_destroy = true
  }

  tags = merge(local.common_tags, { Name = "${var.tag_name}" })

}