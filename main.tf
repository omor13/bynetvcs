terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "192.168.1.0/24"
  tags = {
    Name = "example_vpc_1"
  }
}