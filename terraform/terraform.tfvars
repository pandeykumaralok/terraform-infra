# ---------------------------------------
# AWS Provider
# ---------------------------------------

aws_region = "ap-south-1"

# ---------------------------------------
# VPC
# ---------------------------------------

vpc_name = "dev-vpc"

vpc_cidr = "10.0.0.0/16"

public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"

availability_zone = "ap-south-1a"

# ---------------------------------------
# EC2
# ---------------------------------------

instance_name = "terraform-server"
ami_id         = "ami-00d2dbb426772b03a"
instance_type  = "t3.micro"

# ---------------------------------------
# S3
# ---------------------------------------

bucket_name = "alok-devops-demo-bucket"