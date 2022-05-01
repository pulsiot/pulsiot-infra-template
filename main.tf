terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}


module "pulsiot-ec2-module" {
  source = "github.com/pulsiot/pulsiot-ec2-module"
  inst_type = var.inst_type
  inst_name = var.inst_name
  proj_name = var.proj_name
  env_name = var.env_name
  key_pair  = var.key_pair
  ami_id    = data.aws_ami.ubuntu.id
}
