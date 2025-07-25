resource "aws_instance" "frontend" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "frontend"
    }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "frontend-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "mongodb"
    }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "mongodb-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "Catalogue" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "Catalogue"
    }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "catalogue-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Catalogue.private_ip]
}

resource "aws_instance" "redis" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "redis"
    }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "redis-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "user"
    }
}

resource "aws_route53_record" "user" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "user-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "Cart" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "Cart"
    }
}

resource "aws_route53_record" "Cart" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "cart-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Cart.private_ip]
}

resource "aws_instance" "mysql" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "mysql"
    }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "mysql-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "shipping"
    }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "shipping-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "rabbitmq"
    }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "rabbitmq-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "payment"
    }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "payment-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0246835708d5d8354"]
    tags = {
        Name = "dispatch"
    }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z02974211891Z1NYIJSTE"
  name    = "dispatch-dev.abdulqadir.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}


