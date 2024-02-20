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
resource "aws_vpc" "manual" {
  cidr_block       = "10.200.0.0/16"
  instance_tenancy = "default"

  provisioner "local-exec" {
    command = "echo ${aws_vpc.manual.id} >> vpc.txt"
  }

  tags = {
    Name = "tka-vpc"
    Environment = "development"
  }
}