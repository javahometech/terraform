resource "aws_route_table" "javahome_public_rt" {
  vpc_id = "${aws_vpc.javahome_app.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.javahome-igw.id}"
  }
  tags {
    Name = "public_rt"
  }
}
