terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.37.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
provider "aws" {
  # Configuration options
  alias  = "mumbai"
  region = "ap-south-1"
}
provider "aws" {
  # Configuration options
  alias  = "oregon"
  region = "us-west-2"
}