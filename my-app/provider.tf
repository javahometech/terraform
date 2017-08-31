provider "aws" {
  region = "${var.region}"
}

# Maintaining terraform state in a central location

# terraform {
#   backend "s3" {
#     bucket = "javahome-webapp"
#     key    = "myapp/terraform.tfstate"
#     region = "us-west-2"
#   }
# }
