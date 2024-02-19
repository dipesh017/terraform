terraform workspace list
terraform workspace new dev
terraform workspace new qa
terraform workspace select dev
terraform workspace select qa
-----------------------------------
terraform workspace are just like virtual folders and terraform maintains a separate tfstate file for each workspace.
Hence allow you to contains and maontain multiple replicated environments utilising a single physical folder.
-----------------------------------
provider.tf
modules
vpc.tf - variablised
variable.tf
environment/dev.tfvars and qa.tfvars
-----------------------------------
terraform workspace select dev
terraform apply --var-file="environment/dev.tfvars"

terraform workspace select qa
terraform apply --var-file="environment/qa.tfvars"
-----------------------------------


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "development"
  }
}

variable "name" {
  default = "tka-vpc"
}