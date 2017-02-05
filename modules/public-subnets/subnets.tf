resource "aws_subnet" "public-1a" {
  count                   = "${var.public-1a_create}"
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.public-1a_subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags {
    Name                  = "public-1a"
    Description           = "Public Subnet us-east-1a"
    Terraform             = "true"
  }
}

resource "aws_subnet" "public-1b" {
  count                   = "${var.public-1a_create}"
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.public-1b_subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags {
    Name                  = "public-1b"
    Description           = "Public Subnet us-east-1b"
    Terraform             = "true"
  }
}

resource "aws_subnet" "public-1c" {
  count                   = "${var.public-1a_create}"
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.public-1c_subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1c"
  tags {
    Name                  = "public-1c"
    Description           = "public Subnet us-east-1c"
    Terraform             = "true"
  }
}
