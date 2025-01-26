resource "aws_instance" "frontend" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "frontend"
    }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "frontend-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "mongodb"
    }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "mongodb-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "mongodb-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "Catalogue" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "Catalogue"
    }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "catalogue-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Catalogue.private_ip]
}

resource "aws_instance" "redis" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "redis"
    }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "redis-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "user"
    }
}

resource "aws_route53_record" "user" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "user-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "Cart" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "Cart"
    }
}

resource "aws_route53_record" "Cart" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "cart-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Cart.private_ip]
}

resource "aws_instance" "mysql" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "mysql"
    }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "mysql-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "shipping"
    }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "shipping-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "rabbitmq"
    }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "rabbitmq-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "payment"
    }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "payment-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0880ecf773230947b"]
    tags = {
        Name = "dispatch"
    }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z09687201RU9RU0QEJJY1"
  name    = "dispatch-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}