resource "aws_subnet" "test-public-subnet" {
  vpc_id     = aws_vpc.test-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "test-public-subnet"
  }
  
}

resource "aws_subnet" "test-private-subnet" {
  vpc_id     = aws_vpc.test-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "test-private-subnet"
  }
}
