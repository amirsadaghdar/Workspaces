# S3 Access Point

data "template_file" "s3_policy_file" {
  template = file("${path.module}/policy.json")

  vars = {
    user_name    = var.aws_user_name
    access_point = var.access_point_name
  }
}

resource "aws_s3_access_point" "s3_access_point" {
  bucket = data.aws_s3_bucket.s3_bucket.id
  name   = var.access_point_name
  /*public_access_block_configuration {
    block_public_acls   = var.block_public_acls
  }*/
  policy = data.template_file.s3_policy_file.rendered
}