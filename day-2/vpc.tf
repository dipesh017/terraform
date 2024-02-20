resource "aws_vpc" "main" {
  count = 0
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.name
    Environment = var.env
  }
}

data "aws_vpc" "selected" {
  tags = { Name = "manual-vpc" }
}



resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.selected.id #"vpc-00187b5ed09f73ca1"
  cidr_block = "10.200.1.0/24"

  tags = {
    Name = "public-subnet-1"
  }
}
output "manual_vpc_id" {
  value = data.aws_vpc.selected.id
}