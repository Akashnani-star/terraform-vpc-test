resource "aws_subnet" "test-public-subnet" {
  vpc_id     = aws_vpc.test-vpc.id
  cidr_block = var.cidr_block_public_sn
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "test-public-subnet"
  }
  
}

resource "aws_subnet" "test-private-subnet" {
  vpc_id     = aws_vpc.test-vpc.id
  cidr_block = var.cidr_block_private_sn
  availability_zone = "ap-south-1b"

  tags = {
    Name = "test-private-subnet"
  }
}
