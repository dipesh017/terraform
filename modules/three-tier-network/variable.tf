variable "name" {
  description = "please provide name"
  type = string
  default = "tka-vpc"
}
variable "az" {
  description = "please provide az"
  type = list(string)
  default = [ "us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d" ]
}