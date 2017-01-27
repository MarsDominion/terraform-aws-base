# terraform-awe-base
Builds out a base AWS Environment utilizing Terraform.  It creates a VPC, a Route53 Zone, an internet gateway, 3 public subnets, 3 route tables, 3 nat gateways (one for each AZ).

# Methodology
The goal of my terraform project is to create code that can be used in across multiple enviornments (such as dev, staging, prod).  To do this, it uses the environments folder to define the variables for each environment.  The naming convention that I use is $AWS_ACCOUNT_NAME/$AWS_ACCOUNT_NAME.tfvars  

Everything is controlled by the Makefile.  After setting the environmental variables BUCKET (S3 Bucket to that the state file should be uploaded to) and PROJECT (which would equal $AWS_ACCOUNT_NAME), you can then run make to execute the terraform commands.  For example:

    % make plan
    
Will return the plan and:

    % make apply
    
will execute the command.  

