resource "aws_instance" "test-public-instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.test-public-subnet.id
  vpc_security_group_ids = [ aws_security_group.public_security_group.id ]

  tags = {
    Name = "test-public-instance"
  }
}

resource "aws_instance" "test-private-instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.test-private-subnet.id
  vpc_security_group_ids = [ aws_security_group.private_security_group.id ]

  tags = {
    Name = "test-private-instance"
  }
}
