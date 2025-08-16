module "vpc" {
  source             = "./infrastructure_modules/vpc"
  project_name       = var.project_name
  vpc_cidr_block     = var.vpc_cidr_block
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones
}