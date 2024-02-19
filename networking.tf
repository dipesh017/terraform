resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "tka-vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.100.1.0/24"

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "main2" {
  vpc_id     = "vpc-06308466fa048c6e2"
  cidr_block = "10.100.2.0/24"

  tags = {
    Name = "public-subnet-2"
  }
}
