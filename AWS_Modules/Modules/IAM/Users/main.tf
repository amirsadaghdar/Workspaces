# User #
resource "aws_iam_user" "user" {
  for_each      = toset(var.user_names)
  name          = each.value
  path          = var.path
  force_destroy = true
  tags          = merge(local.common_tags, { Name = "${var.tag_name}-iam" })

}
/*
# User Profile #
resource "aws_iam_user_login_profile" "user_profile" {
  user    = aws_iam_user.user.name
  pgp_key = var.encryption_key
}

output "user_password" {
  value = aws_iam_user_login_profile.user_profile.encrypted_password
}
*/