terraform {
  backend "s3" {
    bucket         = "my-tf-backend-bucket"
    key            = "terraform/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
