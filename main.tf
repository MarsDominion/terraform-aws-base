module "aws-vpc" {
  source                    = "./modules/aws-vpc"
  vpc_name                  = "${var.vpc_name}"
  vpc_cidr                  = "${var.vpc_cidr}"
  r53_zone_name             = "${var.r53_zone_name}"
}

module "public-subnets" {
  source                    = "./modules/public-subnets"
  public-1a_subnet_cidr     = "${var.public-1a_subnet_cidr}"
  public-1b_subnet_cidr     = "${var.public-1b_subnet_cidr}"
  public-1c_subnet_cidr     = "${var.public-1c_subnet_cidr}"
  vpc_id                    = "${module.aws-vpc.vpc_id}"
}
