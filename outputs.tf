output "vpc_id" {
  value = "${module.aws-vpc.vpc_id}"
}

output "cf-nat-1a" {
  value = "${module.public-subnets.cf-nat-1a}"
}
output "cf-nat-1b" {
  value = "${module.public-subnets.cf-nat-1a}"
}
output "cf-nat-1c" {
  value = "${module.public-subnets.cf-nat-1a}"
}