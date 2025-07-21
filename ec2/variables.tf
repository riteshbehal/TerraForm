variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  default     = ""
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  default     = ""
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "Ubuntu AMI ID in us-east-1"
  type        = string
  default     = "ami-053b0d53c279acc90" # Ubuntu Server 22.04 LTS (HVM)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "name_tag" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "My EC2 Instance"
}
