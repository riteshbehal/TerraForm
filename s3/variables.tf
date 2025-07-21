variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "AWS Region to create the bucket in"
  type        = string
  default     = "us-east-1"
}
