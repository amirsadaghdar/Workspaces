
resource "aws_transfer_user" "tu_user" {
  server_id = var.server_id
  user_name = var.user_name
  role      = aws_iam_role.tu_role.arn

  home_directory_type = "LOGICAL"
  home_directory_mappings {
    entry  = "/"
    target = var.target_bucket
  }

  tags = merge(local.common_tags, { Name = "${var.tag_name}-user" })
}

resource "aws_transfer_ssh_key" "ssh_key" {
  server_id = var.server_id
  user_name = var.user_name
  body      = var.ssh_key

  depends_on = [
    aws_transfer_user.tu_user,
  ]
}

resource "aws_iam_role" "tu_role" {
  name_prefix        = "tu-iam-role-"
  assume_role_policy = data.template_file.role_file.rendered

  tags = merge(local.common_tags, { Name = "${var.tag_name}-user" })

}

resource "aws_iam_role_policy" "tu_policy" {
  name = "tu-iam-policy"
  role = aws_iam_role.tu_role.id

  policy = data.template_file.policy_file.rendered

}