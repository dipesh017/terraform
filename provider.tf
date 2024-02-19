terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.37.0"
    }
  }
  backend "s3" {
    bucket = "terraform-tka"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
provider "aws" {
  # Configuration options
  region = "ap-south-1"
}