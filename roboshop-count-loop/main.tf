variable "instances" {
    default = [
        "frontend",
        "cart",
        "catalogue",
        "user",
        "shipping",
        "payment",
        "mysql",
        "mongodb",
        "rabbitmq",
        "redis"
    ]
}

resource "aws_instance" "instance" {
     count = length(var.instances)
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = var.instances[count.index]
      }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "${var.instances[count.index]}-dev.abdulqadir.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[count.index].private_ip]
}

