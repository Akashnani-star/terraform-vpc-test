resource "aws_vpc" "test-vpc" {
  cidr_block       = var.cidr_block_vpc

  tags = {
    Name = "test-vpc"
  }
}
