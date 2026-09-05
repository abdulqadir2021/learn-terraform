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
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = each.key
      }
}

resource "aws_route53_record" "record" {
  for_each = var.instances
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "${each.key}-dev.yeloabhi.fun"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[each.key].private_ip]
}




