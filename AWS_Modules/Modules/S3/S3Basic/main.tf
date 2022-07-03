# S3 Bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.aws_bucket_name
  acl    = "private"

  tags = merge(local.common_tags, { Name = "${var.tag_name}-s3" })
}