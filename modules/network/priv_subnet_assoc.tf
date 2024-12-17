resource "aws_route_table_association" "assoc_priv1" {
  subnet_id      = aws_subnet.priv_sub_1.id
  route_table_id = aws_route_table.priv_rtb.id
}

resource "aws_route_table_association" "assoc_priv2" {
  subnet_id      = aws_subnet.priv_sub_2.id
  route_table_id = aws_route_table.priv_rtb.id
}

resource "aws_route_table_association" "assoc_priv3" {
  subnet_id      = aws_subnet.priv_sub_3.id
  route_table_id = aws_route_table.priv_rtb.id
}
