provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = var.name
  force_destroy = true
}
