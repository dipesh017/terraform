resource "aws_vpc" "main" {
  cidr_block       = "10.201.0.0/16"
  instance_tenancy = "default"

  lifecycle {
    create_before_destroy = true
    prevent_destroy = true
      ignore_changes = [
      tags,
    ]
  }

  tags = {
    Name = "tka-vpc"
    Environment = "development"
  }
}