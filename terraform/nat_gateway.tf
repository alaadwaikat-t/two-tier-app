resource "aws_nat_gateway" "aws-default-vpc-nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.subnet_id
}
