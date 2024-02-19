variable "vpc_cidr" {
  default = "10.200.0.0/16"
}
variable "module_vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "azs" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "Environment" {
  default = "dev"
}