resource "aws_internet_gateway" "test-internet-gw" {
  tags = {
    Name = "test-internet-gw"
  }
}

resource "aws_internet_gateway_attachment" "test_aws_internet_gateway_attachment" {
  internet_gateway_id = aws_internet_gateway.test-internet-gw.id
  vpc_id              = aws_vpc.test-vpc.id
}

