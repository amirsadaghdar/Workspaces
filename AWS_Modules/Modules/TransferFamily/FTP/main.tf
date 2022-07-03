# AWS Transfer Family

resource "aws_transfer_server" "ts_sftp" {
  identity_provider_type = "SERVICE_MANAGED"
  logging_role           = aws_iam_role.ts_role.arn

  tags = merge(local.common_tags, { Name = "${var.tag_name}-sftp" })
}

resource "aws_iam_role" "ts_role" {
  name_prefix        = "ts-iam-role-"
  assume_role_policy = data.template_file.role_file.rendered

  tags = merge(local.common_tags, { Name = "${var.tag_name}-sftp" })

}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.ts_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess"

}
