resource "aws_eip" "nat-1" {
  count           = "${var.public-1_create}"
  vpc             = true
}

resource "aws_nat_gateway" "nat-gw-1" {
  count           = "${var.public-1_create}"
  allocation_id   = "${aws_eip.nat-1.id}"
  subnet_id       = "${aws_subnet.public-1.id}"
}

resource "aws_eip" "nat-2" {
    count         = "${var.public-2_create}"
    vpc           = true
}

resource "aws_nat_gateway" "nat-gw-2" {
    count         = "${var.public-2_create}"
    allocation_id = "${aws_eip.nat-2.id}"
    subnet_id     = "${aws_subnet.public-2.id}"
}

resource "aws_eip" "nat-3" {
    count         = "${var.public-3_create}"
    vpc           = true
}

resource "aws_nat_gateway" "nat-gw-3" {
    count         = "${var.public-3_create}"
    allocation_id = "${aws_eip.nat-3.id}"
    subnet_id     = "${aws_subnet.public-3.id}"
}
