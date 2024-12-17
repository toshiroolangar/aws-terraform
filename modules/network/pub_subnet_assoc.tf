resource "aws_route_table_association" "assoc_pub1" {
  subnet_id = aws_subnet.pub_sub_1.id
  route_table_id = aws_route_table.pub_rtb.id
}