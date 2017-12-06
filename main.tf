module "aws-vpc" {
  source                    = "./modules/aws-vpc"
  vpc_name                  = "${var.vpc_name}"
  vpc_cidr                  = "${var.vpc_cidr}"
  r53_zone_name             = "${var.r53_zone_name}"
}

module "public-subnets" {
  source                    = "./modules/public-subnets"
  public-1_create          = "${var.public-1_create}"
  public-2_create          = "${var.public-2_create}"
  public-3_create          = "${var.public-3_create}"
  public-1_subnet_cidr     = "${var.public-1_subnet_cidr}"
  public-2_subnet_cidr     = "${var.public-2_subnet_cidr}"
  public-3_subnet_cidr     = "${var.public-3_subnet_cidr}"
  vpc_id                    = "${module.aws-vpc.vpc_id}"
}
