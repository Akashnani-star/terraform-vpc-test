resource "aws_instance" "test-public-instance" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.test-public-subnet.id
  vpc_security_group_ids = [ aws_security_group.public_security_group.id ]

  tags = {
    Name = "test-public-instance"
  }
}

resource "aws_instance" "test-private-instance" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.test-private-subnet.id
  vpc_security_group_ids = [ aws_security_group.private_security_group.id ]

  tags = {
    Name = "test-private-instance"
  }
}
