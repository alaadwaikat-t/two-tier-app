resource "aws_route_table" "aws-default-vpc-nat-rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.aws-default-vpc-nat.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.us-east-1a-private.id
  route_table_id = aws_route_table.aws-default-vpc-nat-rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.us-east-1b-private.id
  route_table_id = aws_route_table.aws-default-vpc-nat-rt.id
}
