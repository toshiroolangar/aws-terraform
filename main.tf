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
  region = "us-east-2"
}

module "ec2" {
  source = "./modules/ec2"
  depends_on = [module.network]
  public_subnet_id = module.network.public_subnet_id
}

module "network" {
  source = "./modules/network"
}
