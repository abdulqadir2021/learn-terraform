
resource "aws_route53_record" "record" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "${var.instance_name}-dev.abdulqadir.shop"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}

