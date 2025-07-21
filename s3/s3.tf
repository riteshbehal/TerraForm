resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terra-bucket"
  acl    = "private"

  tags = {
    Name        = "Jenkins S3 Bucket"
    Environment = "Dev"
  }
}
