resource "aws_instance" "instance" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
  tags = {
    Name = var.instance_name
  }
}

variable "instance_name" {}

output "ip_address" {
  value = aws_instance.instance.private_ip
}

# Output in child module wont print on screen,
# Output in root module will print on screen as output


