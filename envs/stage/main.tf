provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source        = "../../modules/vpc"
  cidr          = var.vpc_cidr
  public_subnet = var.public_subnet
  az            = var.az
  name          = "dev-vpc"
}

module "ec2" {
  source        = "../../modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id
  name          = "dev-web"
  env           = "dev"
}
