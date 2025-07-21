resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-jenkins-s3-bucket-123456789"  # Must be globally unique
  acl    = "private"

  tags = {
    Name        = "MyJenkinsS3Bucket"
    Environment = "Dev"
  }
}
