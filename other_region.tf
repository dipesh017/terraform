resource "aws_vpc" "mumbai" {
  provider   = aws.mumbai
  cidr_block = var.vpc_cidr
  tags = {
    Name = "mumbai-vpc"
  }
}
