module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.large"
  key_name               = "user"
  monitoring             = true
  vpc_security_group_ids = ["sg-id"]
  subnet_id              = "subnet-id"

  tags = {
    Terraform   = "true"
    Environment = "development"
  }
}