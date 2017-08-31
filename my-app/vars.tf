variable "region" {
  default = "us-west-2"
}

variable "availability_zones" {
  type = "list"
  default = ["us-west-2a","us-west-2b","us-west-2c"]
}
variable "javahome_app_vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "public_sn_1_cidr" {
  default = "192.168.1.0/24"
}

variable "public_sn_2_cidr" {
  default = "192.168.2.0/24"
}

variable "ami" {
  default = "ami-aa5ebdd2"
}

variable "instance_type" {
  default = "t2.micro"
}
