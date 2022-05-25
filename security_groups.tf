resource "aws_security_group" "public_security_group" {
  name        = "public_security_group"
  description = "public"
  vpc_id      = aws_vpc.test-vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "public_security_group"
  }
}

resource "aws_security_group" "private_security_group" {
  name        = "private_security_group"
  description = "private"
  vpc_id      = aws_vpc.test-vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["${aws_instance.test-public-instance.private_ip}/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "private_security_group"
  }
}
