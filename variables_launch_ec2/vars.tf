variable "region" {
  default = "us-west-2"
}
variable "AMI" {
  type = "map"

  default = {
    us-west-2 = "ami-aa5ebdd2"
    us-east-1 = "ami-4fffc834"
  }
}
variable "instance_type" {
  default = "t2.micro"
}

variable "demo_key" {
  default = "javahome"
}

variable "count" {
  default = 1
}

variable "availability_zones" {
  type = "list"
  default = ["us-west-2a","us-west-2b","us-west-2c"]
}
