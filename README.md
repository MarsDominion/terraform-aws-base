# terraform-awe-base
This repository builds out the base components of an AWS Environment.  It creates a VPC, a Route53 Zone, an internet gateway, up to 3 public subnets, up to 3 route tables and up to 3 nat gateways (one for each AZ).

# Methodology
The goal of my terraform project is to create code that can be used in across multiple environments (such as dev, staging, prod).  To do this, it uses the environments folder to define the variables for each environment.  The naming convention that I use is $AWS_ACCOUNT_NAME/$AWS_ACCOUNT_NAME.tfvars.

This provides the foundation for other Terraform 

# Variables
The variables that are needed are set in the environments directory.  This allows you to setup a different VPCs for different environments (i.e. dev, stage, or prod).  The variables that need to be set are:

    # AWS Informatation
    aws_account       = "cf-poc"                        # The AWS Account Name
    aws_region        = "us-east-1"                     # The AWS Account Region
    
    # aws_vpc Module
    vpc_name          = "oscf_poc"                      # Name for your VPC
    vpc_cidr          = "10.233.0.0/16"                 # CIDR for your VPC
    r53_zone_name     = "poc.blackbaudcloud.com"        # Hosted Zone for Route 53
    
    # public-subnets module
    public-1a_create = true                             # Bolean to determine whether
    public-1b_create = false                            # or not to build each each 
    public-1c_create = false                            # subnet 
    
    public-1a_subnet_cidr = "10.233.0.0/28"             # CIDR for AZ1 Subnet
    public-1b_subnet_cidr = "10.233.0.16/28"            # CIDR for AZ2 Subnet
    public-1c_subnet_cidr = "10.233.0.32/28"            # CIDR for AZ3 Subnet

For now, you do need to fill each value, even if you don't want to use them as they are passed required for the module that creates them.  I will be experimenting later to see if the re is a way ro remove that requirement

# Executing the Terraform Code
Everything is controlled by the Makefile.  After setting the environmental variables BUCKET (S3 Bucket to that the state file should be uploaded to) and PROJECT (which would equal $AWS_ACCOUNT_NAME), you can then run make to execute the terraform commands.  For example:

    % make plan
    
Will return the plan and:

    % make apply
    
will execute the command.  

    % make destroy

will terminate the environment.