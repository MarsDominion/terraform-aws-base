output "vpc_id" {
  value = "${aws_vpc.main_vpc.id}"
}

output "r53-zone" {
  value = "${aws_route53_zone.r53_zone.id}"
}
