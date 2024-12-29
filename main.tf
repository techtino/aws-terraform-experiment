terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
  alias  = "us-east-2"
}

provider "aws" {
  region = "eu-west-1"
}

module "techtino_key_pair_us-east-2" {
  source = "./techtino_key_pair"
  providers = {
    aws = aws.us-east-2
  }
}

module "techtino_key_pair_eu-west-1" {
  source = "./techtino_key_pair"
  providers = {
    aws = aws
  }
}

module "ec2_http_server_us" {
  source = "./ec2_http_server"
  providers = {
    aws = aws.us-east-2
  }
  ami_id = "ami-000ed4c1cc74813f9"
  subnet_id = module.network_us.public_subnet_id
  security_group_id = module.network_us.security_group_id
}

module "ec2_http_server_eu" {
  source = "./ec2_http_server"
  providers = {
    aws = aws
  }
  ami_id = "ami-00233689e73790c74"
  subnet_id = module.network_eu.public_subnet_id
  security_group_id = module.network_eu.security_group_id
}

module "network_eu" {
  source = "./network"
  providers = {
    aws = aws
  }
}

module "network_us" {
  source = "./network"
  providers = {
    aws = aws.us-east-2
  }
}

// ... repeat for each region