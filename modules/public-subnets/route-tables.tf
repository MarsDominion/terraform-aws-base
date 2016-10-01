resource "aws_route_table" "public-1a" {
    vpc_id = "${var.vpc_id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.default.id}"
    }

    tags {
        Name              = "Public 1a Subnet"
        Description       = "Public Subnet us-east-1a"
        Terraform         = "true"
    }
}

resource "aws_route_table_association" "public-1a-rta" {
  subnet_id = "${aws_subnet.public-1a.id}"
  route_table_id = "${aws_route_table.public-1a.id}"
}

resource "aws_route_table" "public-1b" {
    vpc_id = "${var.vpc_id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.default.id}"
    }

    tags {
        Name              = "Public 1b Subnet"
        Description       = "Public Subnet us-east-1b"
        Terraform         = "true"
    }
}

resource "aws_route_table_association" "public-1b-rta" {
  subnet_id = "${aws_subnet.public-1b.id}"
  route_table_id = "${aws_route_table.public-1b.id}"
}


resource "aws_route_table" "public-1c" {
    vpc_id = "${var.vpc_id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.default.id}"
    }

    tags {
        Name              = "Public 1c Subnet"
        Description       = "Public Subnet us-east-1c"
        Terraform         = "true"
    }
}

resource "aws_route_table_association" "public-1c-rta" {
  subnet_id = "${aws_subnet.public-1c.id}"
  route_table_id = "${aws_route_table.public-1c.id}"
}
