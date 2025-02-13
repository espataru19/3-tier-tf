provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "web_tier" {
  source        = "./modules/web-tier"
  vpc_id        = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnets
}

module "app_tier" {
  source          = "./modules/app-tier"
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_app_subnets
}

module "db_tier" {
  source            = "./modules/db-tier"
  vpc_id            = module.vpc.vpc_id
  private_subnets   = module.vpc.private_db_subnets
  db_username       = var.db_username
  db_password       = var.db_password
}

terraform {
  backend "s3" {
    bucket         = "tf-state-bucket"
    key            = "3-tier-architecture/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}