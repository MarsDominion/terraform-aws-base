# Create the Cloud Foundry VPC 
resource "aws_vpc" "main_vpc" {
    cidr_block      = "${var.vpc_cidr}"
    tags {
        Name        = "${var.vpc_name}"
        Terraform   = "true"
    }
}

# Create the Route 53 Zone
resource "aws_route53_zone" "r53_zone" {
    name            = "${var.r53_zone_name}"
    tags {
        Name        = "POC"
        Terraform   = "true"
    }
}
