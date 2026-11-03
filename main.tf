# Create VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "github-actions-oidc-vpc"
    Environment = "Dev"
    ManagedBy  = "Terraform"
  Project    = "GitHub-Actions-OIDC"
  }
}

# Get latest Amazon Linux 2023 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Create EC2 instance
resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  tags = {
    Name        = "github-actions-oidc-ec2"
    Environment = "Dev"
    ManagedBy  = "Terraform"
  }
}
