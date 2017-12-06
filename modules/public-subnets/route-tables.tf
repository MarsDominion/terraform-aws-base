resource "aws_route_table" "public-1" {
  count               = "${var.public-1_create}"
  vpc_id              = "${var.vpc_id}"

  route {
    cidr_block        = "0.0.0.0/0"
    gateway_id        = "${aws_internet_gateway.default.id}"
  }

  tags {
    Name              = "Public 1 Subnet"
    Description       = "Public Subnet ${data.aws_availability_zones.available.names[0]}"
    Terraform         = "true"
  }
}

resource "aws_route_table_association" "public-1-rta" {
  count               = "${var.public-1_create}"
  subnet_id           = "${aws_subnet.public-1.id}"
  route_table_id      = "${aws_route_table.public-1.id}"
}

resource "aws_route_table" "public-2" {
  count               = "${var.public-2_create}"
  vpc_id              = "${var.vpc_id}"

  route {
    cidr_block        = "0.0.0.0/0"
    gateway_id        = "${aws_internet_gateway.default.id}"
  }

  tags {
      Name            = "Public 2 Subnet"
      Description     = "Public Subnet ${data.aws_availability_zones.available.names[1]}"
      Terraform       = "true"
  }
}

resource "aws_route_table_association" "public-2-rta" {
  count               = "${var.public-2_create}"
  subnet_id           = "${aws_subnet.public-2.id}"
  route_table_id      = "${aws_route_table.public-2.id}"
}

resource "aws_route_table" "public-3" {
  count               = "${var.public-3_create}"
  vpc_id              = "${var.vpc_id}"

  route {
      cidr_block      = "0.0.0.0/0"
      gateway_id      = "${aws_internet_gateway.default.id}"
  }

  tags {
      Name            = "Public 3 Subnet"
      Description     = "Public Subnet ${data.aws_availability_zones.available.names[2]}"
      Terraform       = "true"
  }
}

resource "aws_route_table_association" "public-3-rta" {
  count               = "${var.public-3_create}"
  subnet_id           = "${aws_subnet.public-3.id}"
  route_table_id      = "${aws_route_table.public-3.id}"
}
