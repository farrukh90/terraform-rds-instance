resource "aws_security_group" "db" {
	name = "${var.security_group_name}"
	description = "Allow Mysql traffic"
	ingress {
	description = "Allow mysql"
	from_port = 3306
	to_port = 3306
	protocol = "tcp"
	cidr_blocks = ["${var.allowed_hosts}"]
}
egress {
	from_port = 0
	to_port = 0
	protocol = "-1"
	cidr_blocks = ["0.0.0.0/0"]
	}
}
