resource "aws_vpc" "javahome_app" {
  cidr_block = "${var.javahome_app_vpc_cidr}"
  instance_tenancy = "default"
  tags {
    Name = "javahome-vpc"
  }
}

resource "aws_internet_gateway" "javahome-igw" {
  vpc_id = "${aws_vpc.javahome_app.id}"
  tags {
    Name = "javahome-igw"
  }
}
