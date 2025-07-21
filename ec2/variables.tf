variable "instance_name" {
  description = "The EC2 instance name"
  type        = string
}

variable "ami_id" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-0c7217cdde317cfec"  # Amazon Linux 2 (us-east-1)
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}
