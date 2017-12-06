output "nat-gw-1" {
  value = "${aws_nat_gateway.nat-gw-1.*.id}"
}
output "nat-gw-2" {
  value = "${aws_nat_gateway.nat-gw-2.*.id}"
}
output "nat-gw-3" {
  value = "${aws_nat_gateway.nat-gw-3.*.id}"
}
output "internet-gateway" {
  value = "${aws_internet_gateway.default.id}"
}
