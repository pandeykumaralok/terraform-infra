terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-00d2dbb426772b03a" # Amazon Linux 2023 (example for us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-ec2"
  }
}
