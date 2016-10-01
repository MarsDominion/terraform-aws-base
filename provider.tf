# Specify the provider and account access details
provider "aws" {
    region  = "${var.aws_region}"
    profile = "${var.aws_account}"
}
