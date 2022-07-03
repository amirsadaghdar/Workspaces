# S3 Bucket
resource "aws_s3_bucket" "tf-state-files" {
  bucket = var.aws_bucket_name
  acl    = "private"

  tags = merge(local.common_tags, { Name = "${var.tag_name}-backend" })
}

# Dynamo DB
resource "aws_dynamodb_table" "tf-state-locks" {
  name         = var.aws_dynamo_db
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

# Bucket Policy
resource "aws_s3_bucket_policy" "state_bucket_policy" {
  bucket = var.aws_bucket_name
  policy = data.template_file.state_policy_file.rendered
}
