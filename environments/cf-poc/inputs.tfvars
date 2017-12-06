# AWS Informatation
aws_account       = "cf-poc"
aws_region        = "us-east-1"

# aws_vpc Module
vpc_name          = "oscf_poc"
vpc_cidr          = "10.233.0.0/16"
r53_zone_name     = "poc.blackbaudcloud.com"

# public-subnets module
public-1_create = true
public-2_create = false
public-3_create = false

public-1_subnet_cidr = "10.233.0.0/28"
public-2_subnet_cidr = "10.233.0.16/28"
public-3_subnet_cidr = "10.233.0.32/28"

