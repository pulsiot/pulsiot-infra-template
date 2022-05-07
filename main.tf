terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

module "pulsiot-security-group-module" {
  source           = "github.com/pulsiot/pulsiot-security-group-module"
  vpc_id           = var.vpc_id
  cidr_blocks      = var.cidr_blocks
  ipv6_cidr_blocks = var.ipv6_cidr_blocks
}

module "pulsiot-ec2-module" {
  source          = "github.com/pulsiot/pulsiot-ec2-module"
  inst_type       = var.inst_type
  inst_name       = var.inst_name
  proj_name       = var.proj_name
  env_name        = var.env_name
  key_pair        = var.key_pair
  ami_id          = var.ami_id
  security_groups = module.pulsiot-security-group-module.security_group_name
}
