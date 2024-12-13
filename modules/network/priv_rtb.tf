resource "aws_route_table" "priv_rtb" {
  vpc_id = aws_vpc.test-vpc.id
  tags = {
    Name = "priv_rtb"
  }
}

