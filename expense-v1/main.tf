resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-04ed80eb64a208b78"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z09689571N2SFCA2PFU3N"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-04ed80eb64a208b78"]
  tags = {
    Name = "backend"
  }
}
resource "aws_route53_record" "backend" {
  zone_id = "Z09689571N2SFCA2PFU3N"
  name    = "backend-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-04ed80eb64a208b78"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z09689571N2SFCA2PFU3N"
  name    = "mysql-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}