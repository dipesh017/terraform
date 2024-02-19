resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.100.1.0/24"

  tags = {
    Name = "public-subnet-1"
  }
}
