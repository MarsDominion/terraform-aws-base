output "vpc_id" {
  value = "${module.aws-vpc.vpc_id}"
}

output "nat-gw-1a" {
  value = "${module.public-subnets.nat-gw-1a}"
}
output "nat-gw-1b" {
  value = "${module.public-subnets.nat-gw-1b}"
}
output "nat-gw-1c" {
  value = "${module.public-subnets.nat-gw-1c}"
}

output "internet-gateway" {
  value = "${module.public-subnets.internet-gateway}"
}

output "r53-zone" {
  value = "${module.aws-vpc.r53-zone}"
}

output "public_1a_create" {
  value = "${var.public-1a_create}"
}

output "public_1b_create" {
  value = "${var.public-1b_create}"
}

output "public_1c_create" {
  value = "${var.public-1c_create}"
}
