output "nat-gw-1a" {
  value = "${aws_nat_gateway.nat-gw-1.*.id}"
}
output "nat-gw-1b" {
  value = "${aws_nat_gateway.nat-gw-2.*.id}"
}
output "nat-gw-1c" {
  value = "${aws_nat_gateway.nat-gw-3.*.id}"
}
output "internet-gateway" {
  value = "${aws_internet_gateway.default.id}"
}
