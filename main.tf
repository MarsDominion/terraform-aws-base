module "aws_vpc" {
  source                    = "./modules/aws_vpc"
  vpc_name                  = "${var.vpc_name}"
  vpc_cidr                  = "${var.vpc_cidr}"
  r53_zone_name             = "${var.r53_zone_name}"
}
