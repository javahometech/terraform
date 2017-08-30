
resource "aws_instance" "demo" {
    ami = "${lookup(var.AMI,"${var.region}")}"
    instance_type = "${var.instance_type}"
    count = "${var.count}"
    # key_name = "${var.demo_key}"
    tags{
      Name = "CreatedByTerraform"
    }
}
