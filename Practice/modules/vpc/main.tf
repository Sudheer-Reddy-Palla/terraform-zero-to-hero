provider "aws" {
  region = "us-east-1"
}

# VPC Module
module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

# EC2 Module
module "ec2" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id
  vpc_id        = module.vpc.vpc_id
}
