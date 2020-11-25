output "region" {
value = "${var.region}"
}
output "subnet_list" {
value = "${var.subnet_ids}"
}
output "allowed_hosts" {
value = "${var.allowed_hosts}"
}
output "DB_NAME" {
value = "${aws_db_instance.default.identifier}"
}
