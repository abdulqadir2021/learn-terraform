resource "aws_instance" "instance" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0246835708d5d8354"]
  tags = {
    Name = "test.${var.env}"
  }
}

variable "env" {}

