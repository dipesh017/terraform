variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "name" {
  default = "tka-vpc"
}
variable "env" {
  default = "dev"
}
variable "user_name" {
  default = ["rami","shyam"]
}
variable "new_user_name" {
  default = ["rami2","shyam2","dipesh2"]
}