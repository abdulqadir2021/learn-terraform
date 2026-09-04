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
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.small.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = each.key
      }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "${each.key}-dev.abdulqadir.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[each.key].private_ip]
}



