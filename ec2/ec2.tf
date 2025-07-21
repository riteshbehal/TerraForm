resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316"  # Replace with latest valid AMI for us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "JenkinsDemoEC2"
  }
}
