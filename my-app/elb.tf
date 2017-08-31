resource "aws_elb" "javahome_app_elb" {
  name               = "javahome-app-elb"
  # availability_zones = "${var.availability_zones}"
  subnets = ["${aws_subnet.public-sn-1.id}"]
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/index.html"
    interval            = 10
  }

  security_groups = ["${aws_security_group.webservers_sg.id}"]

  instances = ["${aws_instance.webserver-1.id}","${aws_instance.webserver-2.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags {
    Name = "javahome-terraform-elb"
  }
}
