# Data
data "template_file" "state_policy_file" {
  vars = {
    bucket_name      = var.aws_bucket_name
  }
}
