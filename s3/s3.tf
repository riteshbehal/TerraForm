resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "Jenkins S3 Bucket"
    Environment = "Dev"
  }

  force_destroy = true  # Allows deleting non-empty buckets
}
