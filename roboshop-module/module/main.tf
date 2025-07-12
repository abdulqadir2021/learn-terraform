resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-088e5b9464686ff19"]
  tags = {
    Name = var.component_name
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "${var.component_name}-dev.abdulqadir.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip]
}

variable "component_name" {}


