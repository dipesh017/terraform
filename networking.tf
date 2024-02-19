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
variable "vpc_cidr" {
  default = "10.100.0.0/16"
}
output "vpc_id" {
  value = aws_vpc.this.id
}
output "vpc_arn" {
  value = aws_vpc.this.arn
}
output "vpc_main_route_table_id" {
  value = aws_vpc.this.main_route_table_id
}