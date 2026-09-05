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
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = var.instances[count.index]
      }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "${var.instances[count.index]}-dev.yeloabhi.fun"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[count.index].private_ip]
}

