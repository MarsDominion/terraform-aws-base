output "vpc_id" {
  value = "${module.aws-vpc.vpc_id}"
}

output "nat-gw-1" {
  value = "${module.public-subnets.nat-gw-1}"
}
output "nat-gw-2" {
  value = "${module.public-subnets.nat-gw-2}"
}
output "nat-gw-3" {
  value = "${module.public-subnets.nat-gw-3}"
}

output "internet-gateway" {
  value = "${module.public-subnets.internet-gateway}"
}

output "r53-zone" {
  value = "${module.aws-vpc.r53-zone}"
}

output "public_1_create" {
  value = "${var.public-1_create}"
}

output "public_2_create" {
  value = "${var.public-2_create}"
}

output "public_3_create" {
  value = "${var.public-3_create}"
}
