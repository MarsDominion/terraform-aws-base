resource "aws_eip" "nat-1a" {
  count           = "${var.public-1a_create}"
  vpc             = true
}

resource "aws_nat_gateway" "nat-gw-1a" {
  count           = "${var.public-1a_create}"
  allocation_id   = "${aws_eip.nat-1a.id}"
  subnet_id       = "${aws_subnet.public-1a.id}"
}

resource "aws_eip" "nat-1b" {
    count         = "${var.public-1b_create}"
    vpc           = true
}

resource "aws_nat_gateway" "nat-gw-1b" {
    count         = "${var.public-1b_create}"
    allocation_id = "${aws_eip.nat-1b.id}"
    subnet_id     = "${aws_subnet.public-1b.id}"
}

resource "aws_eip" "nat-1c" {
    count         = "${var.public-1c_create}"
    vpc           = true
}

resource "aws_nat_gateway" "nat-gw-1c" {
    count         = "${var.public-1c_create}"
    allocation_id = "${aws_eip.nat-1c.id}"
    subnet_id     = "${aws_subnet.public-1c.id}"
}
