resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0246835708d5d8354"]
  tags = {
    Name = "test.${var.env}"
  }
}

variable "env" {}

