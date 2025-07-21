resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  force_destroy = true  # Allows deleting non-empty buckets

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}
