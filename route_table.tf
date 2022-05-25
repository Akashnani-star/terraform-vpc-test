resource "aws_route_table" "test-route-table" {
  vpc_id = aws_vpc.test-vpc.id

  route {
    cidr_block = var.cidr_block_rt
    gateway_id = aws_internet_gateway.test-internet-gw.id
  }
  
  tags = {
    Name = "test-route-table"
  }
}

resource "aws_route_table_association" "assocation" {
  subnet_id      = aws_subnet.test-public-subnet.id
  route_table_id = aws_route_table.test-route-table.id
}
