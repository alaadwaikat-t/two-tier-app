resource "aws_subnet" "us-east-1a-private" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block_us_east_1a
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "us-east-1b-private" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block_us_east_1b
  availability_zone = "us-east-1b"
}
