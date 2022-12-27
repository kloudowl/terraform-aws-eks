resource "random_string" "suffix" {
  length  = 8
  lower  = true
  special = false
}

module "state" {
  source               = "./modules/state"
  aws_region_for_state = var.aws_region_for_state
}

module "networking" {
  source = "./modules/networking"

  vpc_name = local.vpc_name
  vpc_cidr = local.vpc_cidr
  tags     = local.tags
}

module "eks" {
  source                          = "./modules/eks"
  aws_region_for_cluster          = var.aws_region_for_cluster
  vpc_id                          = module.networking.vpc_id
  eks_cluster_name                = local.eks_cluster_name
  private_subnets                 = module.networking.private_subnets
  environment                     = var.environment
  remote_access_security_group_id = module.networking.remote_access_security_group_id
  instance_type_for_node_group_1  = var.instance_type_for_node_group_1
  instance_type_for_node_group_2  = var.instance_type_for_node_group_2
  subnet_ids                      = module.networking.private_subnets
}

module "rds" {
  source                      = "./modules/rds"
  master_username             = var.rds_master_username
  rds_engine_mode             = var.rds_engine_mode
  rds_instance_class          = var.rds_instance_class
  rds_parameter_group_family  = var.rds_parameter_group_family
  private_subnets_cidr_blocks = module.networking.private_subnets_cidr_blocks
  database_subnets            = module.networking.database_subnets
  vpc_id                      = module.networking.vpc_id
  tags                        = local.tags
}

module "elasticache" {
  source                      = "./modules/elasticache"
  private_subnets_cidr_blocks = module.networking.private_subnets_cidr_blocks
  elasticache_subnets         = module.networking.elasticache_subnets
  vpc_id                      = module.networking.vpc_id
  tags                        = local.tags
}