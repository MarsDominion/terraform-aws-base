resource "aws_eip" "nat-1a" {
    vpc = true
}

resource "aws_nat_gateway" "nat-gw-1a" {
    allocation_id = "${aws_eip.nat-1a.id}"
    subnet_id = "${aws_subnet.public-1a.id}"
}

resource "aws_eip" "nat-1b" {
    vpc = true
}

resource "aws_nat_gateway" "nat-gw-1b" {
    allocation_id = "${aws_eip.nat-1b.id}"
    subnet_id = "${aws_subnet.public-1b.id}"
}

resource "aws_eip" "nat-1c" {
    vpc = true
}

resource "aws_nat_gateway" "nat-gw-1c" {
    allocation_id = "${aws_eip.nat-1c.id}"
    subnet_id = "${aws_subnet.public-1c.id}"
}
