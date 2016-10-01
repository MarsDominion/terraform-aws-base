output "vpc_id" {
  value = "${module.aws-vpc.vpc_id}"
}

output "nat-gw--1a" {
  value = "${module.public-subnets.nat-gw-1a}"
}
output "nat-gw-1b" {
  value = "${module.public-subnets.nat-gw-1a}"
}
output "nat-gw--1c" {
  value = "${module.public-subnets.nat-gw-1a}"
}

output "r53-zone" {
  value = "${module.aws-vpc.r53-zone}"
}
