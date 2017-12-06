# Specify the provider and account access details
provider "aws" {
    version = "~> 1.5"
    region  = "${var.aws_region}"
    profile = "${var.aws_account}"
}
