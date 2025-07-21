bucket         = "my-tf-backend-bucket"
key            = "terraform/global.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "terraform-locks"
