variable "instances" {
    default = {
      frontend = {}
      cart = {}
      catalogue = {}
      user = {}
      shipping = {}
      payment = {}
      mysql = {}
      mongodb = {}
      rabbitmq = {}
      redis = {}

    }
}

resource "aws_instance" "instance" {
     for_each = var.instances
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-088e5b9464686ff19"]
    tags = {
        Name = each.key
      }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "${each.key}-dev.abdulqadir.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[each.key].private_ip]
}


