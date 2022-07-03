# S3 Bucket
resource "aws_s3_bucket" "bucket_worm" {
  bucket        = var.aws_bucket_name
  force_destroy = false

  object_lock_configuration {
    object_lock_enabled = "Enabled"
  }

  tags = var.tags
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket_worm.id
  acl    = "private"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_encryption" {
  bucket = aws_s3_bucket.bucket_worm.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# S3 permissions
resource "aws_s3_bucket_public_access_block" "public_block" {
  bucket                  = aws_s3_bucket.bucket_worm.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# S3 WORM
resource "aws_s3_bucket_object_lock_configuration" "bucket_objectlock" {
  bucket = aws_s3_bucket.bucket_worm.bucket

  rule {
    default_retention {
      mode  = var.worm_mode
      years = var.worm_years
    }
  }
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket_worm.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "versioning-bucket-config" {
  # Must have bucket versioning enabled first
  depends_on = [aws_s3_bucket_versioning.bucket_versioning]

  bucket = aws_s3_bucket.bucket_worm.bucket

  rule {
    id = "worm_config"

    expiration {
      days                         = var.worm_expiration_days
      expired_object_delete_marker = true
    }

    noncurrent_version_expiration {
      noncurrent_days = var.worm_noncurrent_version_expiration
    }

    abort_incomplete_multipart_upload {
      days_after_initiation = var.worm_abort_incomplete_multipart_upload
    }

    status = "Enabled"
  }
}
