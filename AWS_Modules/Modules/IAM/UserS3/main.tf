# User #
resource "aws_iam_user" "user" {
  name          = var.user_name
  path          = var.path
  force_destroy = true
  tags          = merge(local.common_tags, { Name = "${var.tag_name}-iam" })

}

resource "aws_iam_user_policy" "user_policy" {
  name   = "${var.tag_name}-policy"
  user   = aws_iam_user.user.name
  policy = data.template_file.policy_file.rendered
}