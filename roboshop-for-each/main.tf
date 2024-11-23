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
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = each.key
      }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "${each.key}-dev.abdulqadir.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[each.key].private_ip]
}


