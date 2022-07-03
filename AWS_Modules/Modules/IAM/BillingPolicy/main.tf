# Policy #
resource "aws_iam_policy" "billing_policy" {
  name        = var.policy_name
  path        = "/"
  description = var.policy_description
  policy      = data.template_file.policy_file.rendered
}