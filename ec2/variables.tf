variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "ami" {
  description = "Ubuntu AMI ID"
  type        = string
  default     = "ami-0f5ee92e2d63afc18"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "name_tag" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "My EC2 Instance"
}
