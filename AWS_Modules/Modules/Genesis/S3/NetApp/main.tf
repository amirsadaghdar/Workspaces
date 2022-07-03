# S3 Bucket
resource "aws_s3_bucket" "netapp_offload" {
  bucket        = var.aws_bucket_name
  force_destroy = false
  tags          = var.tags
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.netapp_offload.id
  acl    = "private"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_encryption" {
  bucket = aws_s3_bucket.netapp_offload.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Bucket Policy
resource "aws_s3_bucket_policy" "state_bucket_policy" {
  bucket = var.aws_bucket_name
  policy = data.template_file.state_policy_file.rendered

  depends_on = [aws_s3_bucket.netapp_offload]
}

resource "aws_s3_bucket_public_access_block" "public_block" {
  bucket                  = aws_s3_bucket.netapp_offload.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
