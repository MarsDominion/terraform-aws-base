data "aws_availability_zones" "available" {}

resource "aws_subnet" "public-1" {
  count                   = "${var.public-1_create}"
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.public-1_subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone       = "${data.aws_availability_zones.available.names[2]}"
  tags {
    Name                  = "public-1"
    Description           = "Public Subnet ${data.aws_availability_zones.available.names[2]}"
    Terraform             = "true"
  }
}

resource "aws_subnet" "public-2" {
  count                   = "${var.public-2_create}"
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.public-2_subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone       = "${data.aws_availability_zones.available.names[2]}"
  tags {
    Name                  = "public-2"
    Description           = "Public Subnet ${data.aws_availability_zones.available.names[1]}"
    Terraform             = "true"
  }
}

resource "aws_subnet" "public-3" {
  count                   = "${var.public-3_create}"
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.public-3_subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone       = "${data.aws_availability_zones.available.names[2]}"
  tags {
    Name                  = "public-3"
    Description           = "public Subnet ${data.aws_availability_zones.available.names[2]}"
    Terraform             = "true"
  }
}
