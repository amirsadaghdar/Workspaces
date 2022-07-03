
# Setup user and the ssh key
resource "aws_transfer_user" "tu_user" {
  server_id = var.server_id
  user_name = var.user_name
  role      = aws_iam_role.tu_role.arn

  home_directory_type = "LOGICAL"
  home_directory_mappings {
    entry  = "/"
    target = var.target_bucket
  }
}

resource "aws_transfer_ssh_key" "ssh_key" {
  server_id = var.server_id
  user_name = var.user_name
  body      = var.ssh_key

  depends_on = [
    aws_transfer_user.tu_user,
  ]
}

#Setup the iam policy and role.
resource "aws_iam_role" "tu_role" {
  name_prefix        = "tu-iam-role-"
  assume_role_policy = data.template_file.role_file.rendered
}

resource "aws_iam_role_policy" "tu_policy" {
  name = "tu-iam-policy"
  role = aws_iam_role.tu_role.id

  policy = data.template_file.policy_file.rendered

}

# Store the username and ssh key in SSM
resource "aws_ssm_parameter" "app_transferfamily_user_name" {
  name      = "/shr/${var.user_name}/${var.user_name}-user-name"
  type      = "SecureString"
  value     = sensitive(var.ssh_key)
  overwrite = true
}
