resource "aws_iam_user_group_membership" "group_membership" {
  for_each = toset(var.user_names)
  user     = each.value

  groups = [
    var.group_name
  ]
}