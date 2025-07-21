provider "aws" {
  region = "us-east-1"  #Updated to match your working region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket        = "my-terra-bucket"
  force_destroy = true

  tags = {
    Name        = "my-terra-bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}
