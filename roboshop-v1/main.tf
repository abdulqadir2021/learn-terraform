resource "aws_instance" "frontend" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "frontend"
    }
 }

resource "aws_route53_record" "frontend" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "frontend-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "mongodb"
    }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "mongodb-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "Catalogue" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "Catalogue"
    }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "catalogue-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Catalogue.private_ip]
}

resource "aws_instance" "redis" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "redis"
    }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "redis-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "user"
    }
}

resource "aws_route53_record" "user" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "user-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "Cart" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "Cart"
    }
}

resource "aws_route53_record" "Cart" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "cart-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Cart.private_ip]
}

resource "aws_instance" "mysql" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "mysql"
    }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "mysql-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "shipping"
    }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "shipping-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "rabbitmq"
    }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "rabbitmq-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "payment"
    }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "payment-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
    ami           = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04b42790bbde7cf01"]
    tags = {
        Name = "dispatch"
    }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z0272961EHM02ZV0QE8D"
  name    = "dispatch-dev.yeloabhi.fun"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}


