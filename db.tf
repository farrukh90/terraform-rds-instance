resource "aws_db_instance" "default" {
	identifier = "${var.db_name}"
	allocated_storage = "${var.allocated_storage}"
	storage_type = "gp2"
	engine = "${var.engine}"
	engine_version = "${var.engine_version}"
	instance_class = "${var.instance_class}"
	username = "${var.username}"
	password = "${var.password}"
	parameter_group_name = "default.mysql5.7"
	publicly_accessible = "${var.publicly_accessible}"
	db_subnet_group_name = "${aws_db_subnet_group.db.name}"
	skip_final_snapshot = true #used to delete the repo in the future without this you cant delete. There are bugs reported 
	vpc_security_group_ids = ["${aws_security_group.db.id}"]
}
