variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "Jenkins S3 Bucket"
    Environment = "Dev"
  }

  # optional
  force_destroy = false
  region        = "us-east-1"
}
