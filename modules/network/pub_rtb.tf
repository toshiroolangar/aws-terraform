resource "aws_route_table" "pub_rtb" {
  vpc_id = aws_vpc.test-vpc.id
  tags = {
    Name = "pub_rtb"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

