resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terra-bucket"

  tags = {
    Name        = "Jenkins S3 Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}
