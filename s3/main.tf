# s3/main.tf
provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  force_destroy = true

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
