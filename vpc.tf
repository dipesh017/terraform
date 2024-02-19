module "vpc" {
  source = "./modules/terraform-aws-vpc-new"

  name = "tka-vpc"
  cidr = var.module_vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false
  enable_vpn_gateway     = false

  tags = {
    Terraform   = "true"
    Environment = var.Environment
  }
}

