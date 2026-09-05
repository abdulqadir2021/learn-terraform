resource "aws_instance" "instance" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "te.micro"
  vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
  tags = {
    Name = "test.${var.env}"
  }
}

variable "env" {}

