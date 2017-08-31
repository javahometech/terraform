resource "aws_instance" "webserver-1" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.public-sn-1.id}"
    associate_public_ip_address = true
    vpc_security_group_ids = ["${aws_security_group.webservers_sg.id}"]
    user_data = "${file("./scripts/install-http.sh")}"
    tags {
      Name = "terraform-webserver-1"
    }
}

resource "aws_instance" "webserver-2" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.public-sn-2.id}"
    associate_public_ip_address = true
    vpc_security_group_ids = ["${aws_security_group.webservers_sg.id}"]
    user_data = "${file("./scripts/install-http.sh")}"
    tags {
      Name = "terraform-webserver-2"
    }
}
