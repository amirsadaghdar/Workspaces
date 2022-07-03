# IAM User
resource "aws_iam_user" "netappuser" {
  name          = var.netapp_username
  path          = "/"
  force_destroy = true
}

# IAM Group
resource "aws_iam_group" "group-netapp-offload-bucket" {
  name = var.netapp_groupname
  path = "/users/"
}

# Add user to group
resource "aws_iam_group_membership" "member-netapp-offload-bucket" {
  name  = "member-netapp-offload-bucket"
  users = [aws_iam_user.netappuser.name]
  group = aws_iam_group.group-netapp-offload-bucket.name
}

# Policy to allow group full access to bucket
resource "aws_iam_policy" "policy-netapp-offload-bucket" {
  name = "policy-netapp-offload-bucket"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "netappfullaccess",
        "Effect" : "Allow",
        "Action" : "s3:*",
        "Resource" : [
          "arn:aws:s3:::${var.aws_bucket_name}",
          "arn:aws:s3:::${var.aws_bucket_name}/*"
        ]
      }
    ]
  })
}

# Attach policy to group
resource "aws_iam_group_policy_attachment" "policy-netapp-offload-bucket" {
  group      = aws_iam_group.group-netapp-offload-bucket.name
  policy_arn = aws_iam_policy.policy-netapp-offload-bucket.arn
}

# Create Access Key for user
resource "aws_iam_access_key" "netappuser_access_key" {
  user = aws_iam_user.netappuser.name
}

# Store the Access Key and Secret Key in SSM
resource "aws_ssm_parameter" "app_netappuser_access_id" {
  name      = "/shr/${var.netapp_username}/${var.netapp_username}-access-id"
  type      = "SecureString"
  value     = sensitive(aws_iam_access_key.netappuser_access_key.id)
  overwrite = true
}

resource "aws_ssm_parameter" "app_netappuser_access_secret" {
  name      = "/shr/${var.netapp_username}/${var.netapp_username}-access-secret"
  type      = "SecureString"
  value     = sensitive(aws_iam_access_key.netappuser_access_key.secret)
  overwrite = true
}
