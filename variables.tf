# AWS Account Settings
variable "aws_account" {}
variable "aws_region" {}
variable "vpc_name" {}
variable "vpc_cidr" {}
variable "r53_zone_name" {}

# Public Subnets
variable "public-1_create" {}
variable "public-2_create" {}
variable "public-3_create" {}
variable "public-1_subnet_cidr" {}
variable "public-2_subnet_cidr" {}
variable "public-3_subnet_cidr" {}
