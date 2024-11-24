
resource "aws_route53_record" "record" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "${var.instance_name}-dev.abdulqadir.shop"
  type    = "A"
  ttl     = "30"
  records = [var.ip_addrress]
}

variable "instance_name" {}
variable "ip_address" {}

