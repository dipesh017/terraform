resource "aws_vpc" "main" {
  cidr_block       = "10.202.0.0/16"
  instance_tenancy = "default"

  lifecycle {
    create_before_destroy = true
    prevent_destroy = true
  }

  tags = {
    Name = "tka-vpc"
    Environment = "development"
  }
}