# Output data

output "aws_s3_name" {
  value = aws_s3_bucket.s3_bucket.id
}
