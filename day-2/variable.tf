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
  default = ["rami2","dipesh2"]
}
variable "user_data" {
  default = {
    rami3 = "aue"
    dipesh3 = "india"
  }
}
variable "user_info" {
  default = {
    rami4 = {
      email = "rami@gmail.com"
      phone = "1234"
    }
    dipesh4 = {
      email = "dipesh@gmail.com"
      phone = "6789"
    }
  }
}


# {key:value}
# {key=value}
