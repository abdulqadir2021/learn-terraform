
resource "aws_route53_record" "record" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "${var.instance_name}-dev.yeloabhi.fun"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}

