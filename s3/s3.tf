resource "aws_s3_bucket" "my_bucket" {
  bucket = "ritesh-jenkins-demo-bucket-001"
  acl    = "private"

  tags = {
    Name        = "Jenkins S3 Bucket"
    Environment = "Dev"
  }
}
