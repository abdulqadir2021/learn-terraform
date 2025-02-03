resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-088e5b9464686ff19"]
  tags = {
    Name = "test.${var.env}"
  }
}

variable "env" {}

