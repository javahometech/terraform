provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "user_data_demo" {
    ami = "ami-aa5ebdd2"
    instance_type = "t2.micro"
    count = 1
    user_data = "${file("user_data.sh")}"
    key_name = "javahome"
    tags{
      Name = "UserDataDemo"
    }
}
