resource "aws_subnet" "public-sn-1" {
  vpc_id = "${aws_vpc.javahome_app.id}"
  cidr_block = "${var.public_sn_1_cidr}"
  tags {
    Name = "PublicSubnet-1"
  }
}
resource "aws_route_table_association" "associate_to_public_1" {
  subnet_id      = "${aws_subnet.public-sn-1.id}"
  route_table_id = "${aws_route_table.javahome_public_rt.id}"
}

resource "aws_subnet" "public-sn-2" {
  vpc_id = "${aws_vpc.javahome_app.id}"
  cidr_block = "${var.public_sn_2_cidr}"
  tags {
    Name = "PublicSubnet-2"
  }
}
resource "aws_route_table_association" "associate_to_public_2" {
  subnet_id      = "${aws_subnet.public-sn-2.id}"
  route_table_id = "${aws_route_table.javahome_public_rt.id}"
}
