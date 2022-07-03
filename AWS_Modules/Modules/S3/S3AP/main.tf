# S3 Bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.aws_bucket_name
  acl    = "private"

  tags = merge(local.common_tags, { Name = "${var.tag_name}-s3" })
}

resource "aws_s3_bucket_policy" "s3_bucket_policy" {
  depends_on = [aws_s3_bucket.s3bucket]
  bucket     = var.aws_bucket_name
  policy     = data.template_file.s3_policy_file.rendered
}